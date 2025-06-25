package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.AttractionService;
import com.booking.bookingapi.util.ImageEncode;
import com.booking.dto.attraction.AttractionDTO;
import com.booking.dto.attraction.AttractionPriceDTO;
import com.booking.dto.attraction.AttractionTimeDTO;
import com.booking.dto.attraction.VisitorCategoryDTO;
import com.booking.entity.attraction.Attraction;
import com.booking.repository.AttractionRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class AttractionServiceImpl implements AttractionService {

    private final AttractionRepository attractionRepository;
    private final ImageEncode imageEncode;

    @Override
    public List<AttractionDTO> getAttractionsByCity(Long cityId) {
        List<Attraction> attractions = attractionRepository.findByCityId(cityId);
        return attractions.stream().map(a -> AttractionDTO.builder()
                .id(a.getId())
                .name(a.getAttractionName())
                .additionalInfo(a.getAdditionalInfo())
                .description(a.getDescription())
                .imageUrl(imageEncode.encodeImage(a.getImageUrl()))

                .attractionPriceDTO(a.getAttractionPrices().stream()
                        .map(p -> AttractionPriceDTO.builder()
                                .id(p.getId())
                                .attractionPrice(p.getAttractionPrice())
                                .visitorCategory(VisitorCategoryDTO.builder()
                                        .id(p.getVisitorCategory().getId())
                                        .name(p.getVisitorCategory().getName())
                                        .build())
                                .build()
                        ).toList())

                .attractionTimeDTO(a.getAttractionTimes().stream()
                        .map(t -> AttractionTimeDTO.builder()
                                .id(t.getId())
                                .attractionTime(t.getAttractionTime())
                                .attractionDate(t.getAttractionDate())
                                .maxPeople(t.getMaxPeople())
                                .build()
                        ).toList())

                .city(a.getCity().getCityName())
                .country(a.getCity().getCountry().getCountryName())
                .build()
        ).toList();
    }
}
