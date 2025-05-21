package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.HotelService;
import com.booking.dto.HotelDTO;
import com.booking.entity.country.City;
import com.booking.entity.country.Country;
import com.booking.entity.stays.hotel.Hotel;
import com.booking.repository.CityRepository;
import com.booking.repository.ContinentRepository;
import com.booking.repository.CountryRepository;
import com.booking.repository.HotelRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
@AllArgsConstructor
public class HotelServiceImpl implements HotelService {

    private final HotelRepository hotelRepository;

    @Override
    public List<HotelDTO> getHotelsByCity(Long cityId) {
        List<Hotel> hotels = hotelRepository.findAllByCityId(cityId);
        return hotels.stream().map(h -> HotelDTO.builder()
                        .id(h.getId())
                        .name(h.getHotelName())
                        .address(h.getAddress())
                        .cityName(h.getCity().getCityName())
                        .imageUrl(h.getImageUrl())
                        .rating(h.getRating())
                        .countryName(h.getCity().getCountry().getCountryName())
                        .build())
                .toList();
    }
}
