package com.booking.bookingapi.service;

import com.booking.dto.BookingDTO;
import com.booking.dto.request.AttractionBookingRequest;

import java.util.List;

public interface BookingService<T> {
    default void validateAndBook(String token, BookingDTO bookingDTO) {}

    List<T> getAllBookings(String jwt);

    default void bookAttraction(String token, AttractionBookingRequest request) {}
}
