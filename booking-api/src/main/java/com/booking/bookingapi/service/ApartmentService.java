package com.booking.bookingapi.service;

import com.booking.dto.apartment.ApartmentDTO;

import java.util.List;

public interface ApartmentService {
    List<ApartmentDTO> getApartmentsByContinent(Long continentId);

    List<ApartmentDTO> getApartmentsByCity(Long cityId);
}
