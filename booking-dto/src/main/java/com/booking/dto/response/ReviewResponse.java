package com.booking.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ReviewResponse {

    private LocalDate reviewDate;
    private String reviewText;
    private String reviewer;
    private Double rating;
}
