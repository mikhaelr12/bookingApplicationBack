package com.booking.dto.response;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AttractionBookingResponse {

    private Double finalPrice;
    private List<AttractionVisitorResponse> visitorsDTOS;
    private LocalDate date;
    private LocalTime time;
    private String country;
    private String city;
}
