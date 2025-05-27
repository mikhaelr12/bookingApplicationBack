package com.booking.bookingapi.controller;

import com.booking.bookingapi.service.ContinentService;
import com.booking.dto.ContinentDTO;
import io.swagger.v3.oas.annotations.Operation;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/continents")
@AllArgsConstructor
public class ContinentController {

    private final ContinentService continentService;

    @GetMapping
    @Operation(summary = "Get all continents", description = "Return a list of all continents")
    public ResponseEntity<List<ContinentDTO>> getAllContinents() {
        return ResponseEntity.ok(continentService.getAllContinents());
    }
}
