package com.booking.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class AttractionVisitorResponse {

    private int quantity;
    private String visitorCategory;
}
