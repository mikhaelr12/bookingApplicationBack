package com.booking.dto.attraction;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AttractionPriceDTO {

    private Long id;
    private Double attractionPrice;
    private VisitorCategoryDTO visitorCategory;
}
