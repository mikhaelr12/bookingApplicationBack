package com.booking.entity.attraction;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "attraction_prices")
@Data
public class AttractionPrice {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ap_id_seq")
    @SequenceGenerator(name = "ap_id_seq", allocationSize = 1, sequenceName = "ap_id_seq")
    private Long id;

    @Column(name = "attraction_price")
    private Double attractionPrice;

    @ManyToOne
    @JoinColumn(name = "category_id", foreignKey = @ForeignKey(name = "fk_vc_ap"))
    private VisitorCategory visitorCategory;

    @ManyToOne
    @JoinColumn(name = "attraction_id", foreignKey = @ForeignKey(name = "fk_attraction_ap"))
    private Attraction attraction;
}
