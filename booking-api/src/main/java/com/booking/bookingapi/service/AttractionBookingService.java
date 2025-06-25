package com.booking.bookingapi.service;

import com.booking.dto.request.AttractionBookingRequest;

public interface AttractionBookingService {

    void validateAndBook(String jwt, AttractionBookingRequest attractionBookingRequest);
}
