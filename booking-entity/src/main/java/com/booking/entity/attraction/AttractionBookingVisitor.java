package com.booking.entity.attraction;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "attraction_booking_visitors")
@Data
public class AttractionBookingVisitor {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "abv_id_seq")
    @SequenceGenerator(name = "abv_id_seq", sequenceName = "abv_id_seq", allocationSize = 1)
    private Long id;

    @Column(name = "quantity", nullable = false)
    private Integer quantity;

    @Column(name = "unit_price", nullable = false)
    private Double unitPrice;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "booking_id",
            foreignKey = @ForeignKey(name = "fk_booking_abv"))
    private AttractionBooking booking;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "category_id", foreignKey = @ForeignKey(name = "fk_vc_abv"))
    private VisitorCategory category;

}