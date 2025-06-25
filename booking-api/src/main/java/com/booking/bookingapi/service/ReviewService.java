package com.booking.bookingapi.service;

import com.booking.dto.request.ReviewRequest;
import com.booking.dto.response.ReviewResponse;

import java.util.List;

public interface ReviewService{

    void leaveReview(ReviewRequest review, String jwt, Long targetId);
    List<ReviewResponse> findAll(Long targetId);
}
