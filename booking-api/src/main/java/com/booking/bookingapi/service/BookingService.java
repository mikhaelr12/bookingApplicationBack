package com.booking.bookingapi.service;

import com.booking.dto.request.BookingRequest;
import com.booking.dto.request.AttractionBookingRequest;

import java.util.List;

public interface BookingService<T> {
    default void validateAndBook(String token, BookingRequest bookingDTO) {}

    List<T> getAllBookings(String jwt);

    default void bookAttraction(String token, AttractionBookingRequest request) {}
}
