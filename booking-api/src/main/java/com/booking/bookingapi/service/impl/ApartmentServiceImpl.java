package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.ApartmentService;
import com.booking.dto.ApartmentDTO;
import com.booking.entity.country.City;
import com.booking.entity.country.Country;
import com.booking.entity.stays.apartment.Apartment;
import com.booking.exception.ApartmentException;
import com.booking.exception.CountryException;
import com.booking.repository.ApartmentRepository;
import com.booking.repository.CityRepository;
import com.booking.repository.CountryRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class ApartmentServiceImpl implements ApartmentService {

    private final ApartmentRepository apartmentRepository;
    private final CityRepository cityRepository;
    private final CountryRepository countryRepository;

    @Override
    public List<ApartmentDTO> getApartmentsByContinent(Long continentId) {
        List<Country> countries = countryRepository.findAllByContinentId(continentId);

        if (countries.isEmpty())
            throw new CountryException("Countries not found");

        List<ApartmentDTO> result = new ArrayList<>();
        for (Country country : countries) {
            List<City> cities = cityRepository.findAllByCountryId(country.getId());

            List<ApartmentDTO> apartmentDTOs = apartmentRepository.findByCityIn(cities)
                    .stream()
                    .limit(1)
                    .map(a -> ApartmentDTO.builder()
                            .id(a.getId())
                            .apartmentName(a.getApartmentName())
                            .image(a.getImage())
                            .price(a.getPrice())
                            .noGuests(a.getNoGuests())
                            .rating(a.getRating())
                            .address(a.getAddress())
                            .noBedRooms(a.getNoBedRooms())
                            .cityName(a.getCity().getCityName())
                            .countryName(country.getCountryName())
                            .build()).toList();

            result.addAll(apartmentDTOs);
        }
        return result;
    }

    @Override
    public List<ApartmentDTO> getApartmentsByCity(Long cityId) {
        List<Apartment> apartments = apartmentRepository.findAllByCityId(cityId);

        if (apartments.isEmpty())
            throw new ApartmentException("Apartments not found");

        return apartments.stream().map(a -> ApartmentDTO.builder()
                .id(a.getId())
                .apartmentName(a.getApartmentName())
                .image(a.getImage())
                .price(a.getPrice())
                .noGuests(a.getNoGuests())
                .rating(a.getRating())
                .address(a.getAddress())
                .noBedRooms(a.getNoBedRooms())
                .cityName(a.getCity().getCityName())
                .countryName(a.getCity().getCountry().getCountryName())
                .build()).toList();
    }
}
