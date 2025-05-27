package com.booking.entity.stays.apartment;

import com.booking.entity.review.BaseReview;
import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "apartment_reviews")
@Data
public class ApartmentReview extends BaseReview {


    @ManyToOne
    @JoinColumn(name = "apartment_id", foreignKey = @ForeignKey(name = "fk_apartment_apr"))
    private Apartment apartment;
}