package com.booking.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class BookingDTO {

    private Long targetId;
    private Long roomTypeId;
    private Integer noPeople;
    private LocalDate checkIn;
    private LocalDate checkOut;
}
