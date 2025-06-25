package com.booking.bookingapi.controller;

import com.booking.bookingapi.service.HotelRoomService;
import com.booking.dto.hotel.HotelRoomDTO;
import io.swagger.v3.oas.annotations.Operation;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/rooms")
@AllArgsConstructor
public class HotelRoomController {

    private final HotelRoomService hotelRoomService;

    @GetMapping("/{hotelId}")
    @Operation(summary = "Get hotel rooms", description = "Return a list of rooms for a hotel")
    public ResponseEntity<List<HotelRoomDTO>> getHotelRooms(@PathVariable("hotelId") Long hotelId) {
        return ResponseEntity.ok(hotelRoomService.getHotelRooms(hotelId));
    }
}
