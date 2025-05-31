package com.booking.dto.response;

import lombok.*;
import lombok.experimental.SuperBuilder;

@Getter @Setter
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class HotelBookingResponse extends BookingResponse {

    private Integer roomNumber;
    private String roomType;

}
