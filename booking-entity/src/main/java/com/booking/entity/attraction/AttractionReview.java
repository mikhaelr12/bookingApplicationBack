package com.booking.entity.attraction;


import com.booking.entity.review.BaseReview;
import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "attraction_reviews")
@Data
public class AttractionReview extends BaseReview {

    @ManyToOne
    @JoinColumn(name = "attraction_id", foreignKey = @ForeignKey(name = "fk_attraction_ar"))
    private Attraction attraction;
}
