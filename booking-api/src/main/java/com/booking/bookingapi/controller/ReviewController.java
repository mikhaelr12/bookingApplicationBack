package com.booking.bookingapi.controller;

import com.booking.bookingapi.service.ReviewService;
import com.booking.dto.ReviewDTO;
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
    @Operation(summary = "Leave review for hotel", description = "User leaves a review for hotel, text not necessary")
    public ResponseEntity<?> leaveReview(@PathVariable("type") String type,
                                         @PathVariable("targetId") Long targetId,
                                         @RequestBody ReviewDTO reviewDTO,
                                         @RequestHeader("Authorization") String token) {
        String jwt = tokenExtract.getToken(token);
        ReviewService reviewService = reviewServiceMap.get(type);
        reviewService.leaveReview(reviewDTO, jwt, targetId);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/{type}/{targetId}")
    @Operation(summary = "Return all reviews for a hotel", description = "Return a list of all reviews for a hotel")
    public ResponseEntity<List<ReviewDTO>> getAllReviewsForHotel(@PathVariable("type") String type,
                                                                 @PathVariable("targetId") Long targetId){
        ReviewService reviewService = reviewServiceMap.get(type);
        return ResponseEntity.ok(reviewService.findAll(targetId));
    }
}
