package com.booking.dto.attraction;

import com.booking.dto.CityDTO;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AttractionDTO {

    private Long id;
    private String name;
    private String description;
    private Integer duration;
    private String imageUrl;
    private String additionalInfo;
    private List<AttractionTimeDTO> attractionTimeDTO;
    private List<AttractionPriceDTO> attractionPriceDTO;
    private String city;
    private String country;
}
