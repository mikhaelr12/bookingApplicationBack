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
    private final CityRepository cityRepository;
    private final CountryRepository countryRepository;

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

    @Override
    public List<HotelDTO> getHotelsByContinent(Long continentId) {
        List<Country> countries = countryRepository.findAllByContinentId(continentId);
        List<HotelDTO> result = new ArrayList<>();

        for (Country country : countries) {
            List<City> cities = cityRepository.findAllByCountryId(country.getId());

            // Get all hotels in those cities
            List<HotelDTO> hotelsInCountry = hotelRepository.findAllByCityIn(cities).stream()
                    .limit(3) // take first 3 per country
                    .map(h -> HotelDTO.builder()
                            .id(h.getId())
                            .name(h.getHotelName())
                            .address(h.getAddress())
                            .cityName(h.getCity().getCityName())
                            .imageUrl(h.getImageUrl())
                            .rating(h.getRating())
                            .countryName(country.getCountryName())
                            .build())
                    .toList();

            result.addAll(hotelsInCountry);
        }

        return result;
    }
}
