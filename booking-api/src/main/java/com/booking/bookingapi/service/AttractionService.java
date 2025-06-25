package com.booking.bookingapi.service;

import com.booking.dto.attraction.AttractionDTO;

import java.util.List;

public interface AttractionService {
    List<AttractionDTO> getAttractionsByCity(Long cityId);
}
