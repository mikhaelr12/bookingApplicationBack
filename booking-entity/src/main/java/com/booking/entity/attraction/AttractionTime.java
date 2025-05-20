package com.booking.entity.attraction;

import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDate;
import java.time.LocalTime;

@Entity
@Table(name = "attraction_times")
@Data
public class AttractionTime {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "at_id_seq")
    @SequenceGenerator(name = "at_id_seq", allocationSize = 1, sequenceName = "at_id_seq")
    private Long id;

    @Column(name = "attraction_date", nullable = false)
    private LocalDate attractionDate;

    @Column(name = "attraction_time", nullable = false)
    private LocalTime attractionTime;

    @Column(name = "maxPeople")
    private Integer maxPeople;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "attraction_id", foreignKey = @ForeignKey(name = "fk_attraction_at"))
    private Attraction attraction;
}
