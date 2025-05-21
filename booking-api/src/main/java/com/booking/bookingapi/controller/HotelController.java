package com.booking.bookingapi.controller;

import com.booking.bookingapi.service.HotelService;
import com.booking.dto.HotelDTO;
import com.booking.entity.stays.hotel.Hotel;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/hotels")
@AllArgsConstructor
public class HotelController {

    private final HotelService hotelService;

    @GetMapping("/continents/{continentId}")
    public ResponseEntity<List<HotelDTO>> getHotelsByContinent(@PathVariable("continentId") Long continentId) {
        return ResponseEntity.ok(hotelService.getHotelsByContinent(continentId));
    }

    @GetMapping("/cities/{cityId}")
    public ResponseEntity<List<HotelDTO>> getHotelsByCity(@PathVariable("cityId") Long cityId) {
        return ResponseEntity.ok(hotelService.getHotelsByCity(cityId));
    }
}
