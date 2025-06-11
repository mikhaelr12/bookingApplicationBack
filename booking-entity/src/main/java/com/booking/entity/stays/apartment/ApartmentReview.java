package com.booking.entity.stays.apartment;

import com.booking.entity.review.BaseReview;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;

@Entity
@Table(name = "apartment_reviews")
@Getter @Setter
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class ApartmentReview extends BaseReview {


    @ManyToOne
    @JoinColumn(name = "apartment_id", foreignKey = @ForeignKey(name = "fk_apartment_apr"))
    private Apartment apartment;
}