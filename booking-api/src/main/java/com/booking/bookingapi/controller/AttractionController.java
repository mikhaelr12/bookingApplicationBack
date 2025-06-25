package com.booking.bookingapi.controller;

import com.booking.bookingapi.service.AttractionService;
import com.booking.dto.attraction.AttractionDTO;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/attractions")
@AllArgsConstructor
public class AttractionController {

    private final AttractionService attractionService;

    @GetMapping("/{cityId}")
    public ResponseEntity<List<AttractionDTO>> getAttractionsByCity(@PathVariable("cityId") Long cityId) {
        return ResponseEntity.ok(attractionService.getAttractionsByCity(cityId));
    }
}
