package com.booking.bookingapi.service;

import com.booking.dto.CityDTO;

import java.util.List;

public interface CityService {
    List<CityDTO> getFeaturedCities();
}
