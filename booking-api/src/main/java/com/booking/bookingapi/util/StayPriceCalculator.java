package com.booking.bookingapi.util;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

@Component
public class StayPriceCalculator {

    public Double calculatePrice(LocalDate checkIn, LocalDate checkOut, Double price) {
        long days = ChronoUnit.DAYS.between(checkIn, checkOut);
        return price * days;
    }
}
