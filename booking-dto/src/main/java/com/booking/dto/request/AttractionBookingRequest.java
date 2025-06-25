package com.booking.dto.request;

import com.booking.dto.AttractionVisitorsDTO;
import lombok.Data;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Data
public class AttractionBookingRequest {

    private Long attractionId;
    private LocalDate attractionDate;
    private LocalTime attractionTime;
    private List<AttractionVisitorsDTO> visitorsDTOS;
}
