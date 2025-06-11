package com.booking.bookingapi.controller;

import com.booking.bookingapi.service.BookingService;
import com.booking.dto.BookingDTO;
import com.booking.token.TokenExtract;
import io.swagger.v3.oas.annotations.Operation;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/bookings")
@AllArgsConstructor
public class BookingController {

    private final TokenExtract tokenExtract;
    private final Map<String, BookingService<?>> bookingServices;

    @PostMapping("/{type}")
    @Operation(summary = "Booking for hotel/apartment", description = "Front end sends type as: " +
            "hotel-booking/apartment-booking, depending on the case. TargetId is id of hotel/apartment, roomType" +
            " for hotel, people and dates.")
    public ResponseEntity<?> validateAndBook(@RequestHeader("Authorization") String token,
                                             @PathVariable("type") String type,
                                             BookingDTO hotelDTO) {
        String jwt = tokenExtract.getToken(token);
        BookingService<?> bookingService = bookingServices.get(type);
        bookingService.validateAndBook(jwt, hotelDTO);
        return ResponseEntity.ok("Booking made successfully");
    }

    @GetMapping("/{type}")
    @Operation(summary = "Get users bookings", description = "Get all the bookings of a user, " +
            "hotel-booking for hotel/apartment-booking for apartment")
    public ResponseEntity<List<?>> getBookings(@RequestHeader("Authorization") String token,
                                               @PathVariable("type") String type) {
        String jwt = tokenExtract.getToken(token);
        BookingService<?> bookingService = bookingServices.get(type);
        return ResponseEntity.ok(bookingService.getAllBookings(jwt));
    }
}
