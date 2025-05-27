package com.booking.bookingapi.service;

import com.booking.dto.ReviewDTO;

import java.util.List;

public interface ReviewService{

    void leaveReview(ReviewDTO review, String jwt, Long targetId);
    List<ReviewDTO> findAll(Long targetId);
}
