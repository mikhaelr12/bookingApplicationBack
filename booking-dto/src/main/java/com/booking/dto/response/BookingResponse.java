package com.booking.dto.response;

import jakarta.persistence.MappedSuperclass;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@MappedSuperclass
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class BookingResponse {

    private Long bookingId;
    private String name;
    private String address;
    private LocalDate checkIn;
    private LocalDate checkOut;
    private String status;
    private Double finalPrice;
    private String cityName;
    private String countryName;
    private LocalDateTime bookedAt;
}
