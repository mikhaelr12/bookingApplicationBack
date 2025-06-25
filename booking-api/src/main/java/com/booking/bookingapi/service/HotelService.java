package com.booking.bookingapi.service;

import com.booking.dto.hotel.HotelDTO;

import java.util.List;

public interface HotelService {

    List<HotelDTO> getHotelsByCity(Long cityId);

    List<HotelDTO> getHotelsByContinent(Long continentId);

}
