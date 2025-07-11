package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.ReviewService;
import com.booking.dto.request.ReviewRequest;
import com.booking.dto.response.ReviewResponse;
import com.booking.entity.User;
import com.booking.entity.stays.apartment.Apartment;
import com.booking.entity.stays.apartment.ApartmentReview;
import com.booking.exception.UserException;
import com.booking.repository.ApartmentRepository;
import com.booking.repository.ApartmentReviewRepository;
import com.booking.token.UserExtract;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service("apartment-review")
@AllArgsConstructor
public class ApartmentReviewServiceImpl implements ReviewService {

    private final ApartmentRepository apartmentRepository;
    private final ApartmentReviewRepository apartmentReviewRepository;
    private final UserExtract userExtract;

    @Override
    public void leaveReview(ReviewRequest review, String jwt, Long targetId) {
        User user = userExtract.getUser(jwt);

        if (user == null)
            throw new UserException("User not found");

        Optional<Apartment> apartment = apartmentRepository.findById(targetId);

        apartment.ifPresent(
                aptReview -> apartmentReviewRepository.save(ApartmentReview.builder()
                .apartment(aptReview)
                .reviewDate(LocalDate.now())
                .user(user)
                .rating(review.getRating())
                .text(review.getText())
                .build()));
    }

    @Override
    public List<ReviewResponse> findAll(Long targetId) {
        List<ApartmentReview> reviews = apartmentReviewRepository.findByApartmentId(targetId);
        return reviews.stream().map(ar -> ReviewResponse.builder()
                .reviewDate(ar.getReviewDate())
                .reviewText(ar.getText())
                .rating(ar.getRating())
                .reviewer(ar.getUser().getUsername())
                .build()).toList();
    }
}
