package com.booking.bookingapi.controller;

import com.booking.bookingapi.service.HotelService;
import com.booking.dto.HotelDTO;
import io.swagger.v3.oas.annotations.Operation;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/hotels")
@AllArgsConstructor
public class HotelController {

    private final HotelService hotelService;

    @GetMapping("/continent/{continentId}")
    @Operation(summary = "Get hotels by continent", description = "Return list o a hotel from each country in the continent")
    public ResponseEntity<List<HotelDTO>> getHotelsByContinent(@PathVariable("continentId") Long continentId) {
        return ResponseEntity.ok(hotelService.getHotelsByContinent(continentId));
    }

    @GetMapping("/city/{cityId}")
    @Operation(summary = "Get hotels by city", description = "Return all hotels from a city")
    public ResponseEntity<List<HotelDTO>> getHotelsByCity(@PathVariable("cityId") Long cityId) {
        return ResponseEntity.ok(hotelService.getHotelsByCity(cityId));
    }


}
