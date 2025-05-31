package com.booking.entity.attraction;

import com.booking.entity.Category;
import com.booking.entity.country.City;
import jakarta.persistence.*;
import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "attractions")
@Data
public class Attraction {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "attraction_id_seq")
    @SequenceGenerator(name = "attraction_id_seq", allocationSize = 1, sequenceName = "attraction_id_seq")
    private Long id;

    @Column(name = "attraction_name", nullable = false)
    private String attractionName;

    @Column(name = "description", nullable = false, columnDefinition = "TEXT")
    private String description;

    //minutes
    @Column(name = "duration", nullable = false)
    private Integer duration;

    @Column(name = "image_url")
    private String imageUrl;

    @CreationTimestamp
    @Column(name = "created_at", nullable = false)
    private LocalDateTime createdAt;

    @Column(name = "additional_info", columnDefinition = "TEXT")
    private String additionalInfo;

    @OneToMany(mappedBy = "attraction", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<AttractionTime> attractionTimes = new ArrayList<>();

    @OneToMany(mappedBy = "attraction", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<AttractionPrice> attractionPrices = new ArrayList<>();

    @ManyToOne
    @JoinColumn(name = "city_id", foreignKey = @ForeignKey(name = "fk_city_attraction"))
    private City city;

    @ManyToOne
    @JoinColumn(name = "category_id", foreignKey = @ForeignKey(name = "fk_category_attraction"))
    private Category category;
}