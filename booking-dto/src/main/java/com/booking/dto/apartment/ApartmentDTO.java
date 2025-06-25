package com.booking.dto.apartment;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ApartmentDTO {

    private Long id;
    private String apartmentName;
    private String address;
    private Double rating;
    private Double price;
    private Integer noBedRooms;
    private Integer noGuests;
    private String image;
    private String cityName;
    private String countryName;
}
