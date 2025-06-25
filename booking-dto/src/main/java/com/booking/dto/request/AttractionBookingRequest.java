package com.booking.dto.request;

import com.booking.dto.AttractionVisitorsDTO;
import lombok.Data;

import java.util.List;

@Data
public class AttractionBookingRequest {

    private Long attractionId;
    private Long attractionTimeId;
    private List<AttractionVisitorsDTO> visitorsDTOS;
}
