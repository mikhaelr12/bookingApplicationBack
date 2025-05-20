package com.booking.entity.country;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "continents")
@Data
public class Continent {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "continent_id_seq")
    @SequenceGenerator(name = "continent_id_seq", allocationSize = 1, sequenceName = "continent_id_seq")
    private Long id;

    @Column(name = "continent_name", nullable = false)
    private String continentName;
}
