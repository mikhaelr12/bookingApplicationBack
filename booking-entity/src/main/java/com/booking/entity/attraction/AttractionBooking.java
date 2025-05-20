package com.booking.entity.attraction;

import com.booking.entity.User;
import jakarta.persistence.*;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "attraction_bookings")
@Data
public class AttractionBooking {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "atb_id_seq")
    @SequenceGenerator(name = "atb_id_seq", allocationSize = 1, sequenceName = "atb_id_seq")
    private Long id;

    @Column(name = "final_price", nullable = false)
    private Double finalPrice;

    @ManyToOne
    @JoinColumn(name = "attraction_id", foreignKey = @ForeignKey(name = "fk_attraction_ab"))
    private Attraction attraction;

    @ManyToOne
    @JoinColumn(name = "user_id", foreignKey = @ForeignKey(name = "fk_user_ab"))
    private User user;

    @ManyToOne
    @JoinColumn(name = "time_id", foreignKey = @ForeignKey(name = "fk_at_ab"))
    private AttractionTime attractionTime;


    @OneToMany(mappedBy = "booking", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<AttractionBookingVisitor> visitors = new ArrayList<>();

}
