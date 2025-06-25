package com.booking.bookingapi.controller;

import com.booking.bookingapi.service.ApartmentService;
import com.booking.dto.apartment.ApartmentDTO;
import io.swagger.v3.oas.annotations.Operation;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/apartments")
@AllArgsConstructor
public class ApartmentController {

    private final ApartmentService apartmentService;

    @GetMapping("/continent/{continentId}")
    @Operation(summary = "Get apartments from a continent", description = "Return 5 in total apartments, " +
            "1 from each country from a continent")
    public ResponseEntity<List<ApartmentDTO>> getApartmentsByContinent(@PathVariable("continentId") Long continentId) {
        return ResponseEntity.ok(apartmentService.getApartmentsByContinent(continentId));
    }

    @GetMapping("/city/{cityId}")
    @Operation(summary = "Get apartments by city", description = "Return all apartments from a city")
    public ResponseEntity<List<ApartmentDTO>> getApartmentsByCity(@PathVariable("cityId") Long cityId) {
        return ResponseEntity.ok(apartmentService.getApartmentsByCity(cityId));
    }
}
