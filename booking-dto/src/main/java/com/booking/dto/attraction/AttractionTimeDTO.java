package com.booking.dto.attraction;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AttractionTimeDTO {

    private Long id;
    private LocalDate attractionDate;
    private LocalTime attractionTime;
    private Integer maxPeople;
}
