package com.booking.bookingapi.service;

import com.booking.dto.BookingDTO;

import java.util.List;

public interface BookingService<T> {
    void validateAndBook(String token, BookingDTO bookingDTO);

    List<T> getAllBookings(String jwt);
}
