package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.ContinentService;
import com.booking.dto.ContinentDTO;
import com.booking.entity.country.Continent;
import com.booking.exception.ContinentException;
import com.booking.repository.ContinentRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
@AllArgsConstructor
public class ContinentServiceImpl implements ContinentService {

    private final ContinentRepository continentRepository;

    @Override
    public List<ContinentDTO> getAllContinents() {
        List<Continent> continents = continentRepository.findAll();

        if (continents.isEmpty())
            throw new ContinentException("Continents not found");

        return continents.stream().map(c -> ContinentDTO.builder()
                .id(c.getId())
                .name(c.getContinentName())
                .build()).toList();
    }
}
