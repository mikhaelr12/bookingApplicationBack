package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.ReviewService;
import com.booking.dto.request.ReviewRequest;
import com.booking.dto.response.ReviewResponse;
import com.booking.entity.User;
import com.booking.entity.stays.hotel.Hotel;
import com.booking.entity.stays.hotel.HotelReview;
import com.booking.exception.UserException;
import com.booking.repository.HotelRepository;
import com.booking.repository.HotelReviewRepository;
import com.booking.token.UserExtract;
import jakarta.persistence.EntityNotFoundException;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service("hotel-review")
@AllArgsConstructor
public class HotelReviewServiceImpl implements ReviewService {

    private final UserExtract userExtract;
    private final HotelReviewRepository hotelReviewRepository;
    private final HotelRepository hotelRepository;

    @Override
    public void leaveReview(ReviewRequest review, String jwt, Long targetId) {
        User user = userExtract.getUser(jwt);

        if(user == null)
            throw new UserException("User not found");

        Optional<Hotel> hotel = hotelRepository.findById(targetId);

        hotel.ifPresent(
                hotelReview -> hotelReviewRepository.save(HotelReview.builder()
                .hotel(hotel.get())
                .user(user)
                .reviewDate(LocalDate.now())
                .text(review.getText())
                .rating(review.getRating())
                .build()));

    }

    @Override
    public List<ReviewResponse> findAll(Long targetId) {
        List<HotelReview> reviews = hotelReviewRepository.findAllByHotelId(targetId);
        return reviews.stream().map(hr -> ReviewResponse.builder()
                .reviewDate(hr.getReviewDate())
                .reviewText(hr.getText())
                .rating(hr.getRating())
                .reviewer(hr.getUser().getUsername())
                .build()).toList();
    }

    public void updateRating() {
        List<HotelReview> hotelReviews = hotelReviewRepository.findAllByCheckedFalse();

        if (hotelReviews.isEmpty())
            throw new EntityNotFoundException("Hotel reviews not found");

        for (HotelReview hotelReview : hotelReviews) {
            Long hotelId = hotelReview.getHotel().getId();
            hotelReview.setChecked(true);
            hotelReviewRepository.save(hotelReview);

            Double avgRating = hotelReviewRepository.calculateAverageRatingByHotelId(hotelId);
            if(avgRating != null){
                hotelRepository.findById(hotelId).ifPresent(hotel -> {
                    hotel.setRating(avgRating);
                    hotelRepository.save(hotel);
                });
            }
        }
    }
}
