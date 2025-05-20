package com.booking.entity.stays.hotel;

import com.booking.entity.review.BaseReview;
import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "hotel_reviews")
@Data
public class HotelReview extends BaseReview {

    @ManyToOne
    @JoinColumn(name = "hotel_id", foreignKey = @ForeignKey(name = "fk_hotel_hr"))
    private Hotel hotel;
}