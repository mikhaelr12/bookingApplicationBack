package com.booking.bookingapi.controller;

import com.booking.bookingapi.service.ReviewService;
import com.booking.dto.request.ReviewRequest;
import com.booking.dto.response.ReviewResponse;
import com.booking.token.TokenExtract;
import io.swagger.v3.oas.annotations.Operation;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/reviews")
@AllArgsConstructor
public class ReviewController {

    private final Map<String, ReviewService> reviewServiceMap;
    private final TokenExtract tokenExtract;

    @PostMapping("/{type}/{targetId}")
    @Operation(summary = "Leave review for hotel/apartment", description = "User leaves a review for hotel or apartment," +
            " text not necessary")
    public ResponseEntity<?> leaveReview(@PathVariable("type") String type,
                                         @PathVariable("targetId") Long targetId,
                                         @RequestBody ReviewRequest reviewDTO,
                                         @RequestHeader("Authorization") String token) {
        String jwt = tokenExtract.getToken(token);
        ReviewService reviewService = reviewServiceMap.get(type);
        reviewService.leaveReview(reviewDTO, jwt, targetId);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/{type}/{targetId}")
    @Operation(summary = "Return all reviews for a hotel/apartment", description = "Return a list of all reviews for a " +
            "hotel or apartment")
    public ResponseEntity<List<ReviewResponse>> getAllReviews(@PathVariable("type") String type,
                                                              @PathVariable("targetId") Long targetId){
        ReviewService reviewService = reviewServiceMap.get(type);
        return ResponseEntity.ok(reviewService.findAll(targetId));
    }
}
