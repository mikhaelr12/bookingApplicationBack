package com.booking.bookingapi.service;

import com.booking.dto.HotelDTO;

import java.util.List;

public interface HotelService {

    List<HotelDTO> getHotelsByCity(Long cityId);

    List<HotelDTO> getHotelsByContinent(Long continentId);

}
