package com.booking.entity.country;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "city")
@Data
public class City {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "city_id_seq")
    @SequenceGenerator(name = "city_id_seq", allocationSize = 1, sequenceName = "city_id_seq")
    private Long id;

    @Column(name = "city_name", nullable = false)
    private String cityName;

    @Column(name = "image_path")
    private String imagePath;

    @ManyToOne
    @JoinColumn(name = "country_id", foreignKey = @ForeignKey(name = "fk_country_city"))
    private Country country;
}
