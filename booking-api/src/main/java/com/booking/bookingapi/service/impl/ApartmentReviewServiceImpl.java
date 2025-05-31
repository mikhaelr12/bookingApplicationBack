package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.ReviewService;
import com.booking.dto.ReviewDTO;
import com.booking.dto.UserReviewDTO;
import com.booking.entity.User;
import com.booking.entity.stays.apartment.Apartment;
import com.booking.entity.stays.apartment.ApartmentReview;
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
    public void leaveReview(ReviewDTO review, String jwt, Long targetId) {
        User user = userExtract.getUser(jwt);
        Optional<Apartment> apartment = apartmentRepository.findById(targetId);
        ApartmentReview newReview = new ApartmentReview();
        if (apartment.isPresent()) {
            newReview.setApartment(apartment.get());
            newReview.setUser(user);
            newReview.setReviewDate(LocalDate.now());
            newReview.setRating(review.getRating());
            newReview.setText(review.getText());
            apartmentReviewRepository.save(newReview);
        }
    }

    @Override
    public List<ReviewDTO> findAll(Long targetId) {
        List<ApartmentReview> reviews = apartmentReviewRepository.findByApartmentId(targetId);
        return reviews.stream().map(ar -> ReviewDTO.builder()
                .id(ar.getId())
                .reviewDate(ar.getReviewDate())
                .text(ar.getText())
                .rating(ar.getRating())
                .userReview(UserReviewDTO.builder()
                        .username(ar.getUser().getUsername())
                        .build())
                .build()).toList();
    }
}
