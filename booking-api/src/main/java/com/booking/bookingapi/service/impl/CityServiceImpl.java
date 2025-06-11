package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.CityService;
import com.booking.bookingapi.util.ImageEncode;
import com.booking.dto.CityDTO;
import com.booking.dto.CountryDTO;
import com.booking.repository.CityRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class CityServiceImpl implements CityService {

    private final CityRepository cityRepository;
    private final ImageEncode imageEncode;

    @Override
    public List<CityDTO> getFeaturedCities() {
        List<CityDTO> cities = new ArrayList<>(cityRepository.findAll().stream()
                .map(c -> CityDTO.builder()
                        .id(c.getId())
                        .name(c.getCityName())
                        .imageUrl(imageEncode.encodeImage(c.getImagePath()))
                        .countryDTO(CountryDTO.builder()
                                .id(c.getCountry().getId())
                                .name(c.getCountry().getCountryName())
                                .build())
                        .build()
                ).toList());

        //Collections.shuffle(cities);
        return cities.stream()
                .limit(10)
                .toList();
    }
}
