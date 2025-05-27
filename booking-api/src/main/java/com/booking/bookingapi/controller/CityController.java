package com.booking.bookingapi.controller;

import com.booking.bookingapi.service.CityService;
import com.booking.dto.CityDTO;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/cities")
@AllArgsConstructor
public class CityController {

    private final CityService cityService;


    @GetMapping("/featured")
    public ResponseEntity<List<CityDTO>> getFeaturedCities() {
        return ResponseEntity.ok(cityService.getFeaturedCities());
    }
}
