package com.booking.entity.stays.apartment;

import com.booking.entity.Category;
import com.booking.entity.country.City;
import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "apartments")
@Data
public class Apartment {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "apartment_id_seq")
    @SequenceGenerator(name = "apartment_id_seq", allocationSize = 1, sequenceName = "apartment_id_seq")
    private Long id;

    @Column(name = "apartment_name", nullable = false)
    private String apartmentName;

    @Column(name = "address", nullable = false)
    private String address;

    @Column(name = "rating")
    private Double rating;

    @Column(name = "price", nullable = false)
    private Double price;

    @Column(name = "no_bedrooms", nullable = false)
    private Integer noBedRooms;

    @Column(name = "no_guests", nullable = false)
    private Integer noGuests;

    @Column(name = "image" , nullable = false)
    private String image;

    @ManyToOne
    @JoinColumn(name = "city_id", foreignKey = @ForeignKey(name = "fk_city_apartment"))
    private City city;

    @ManyToOne
    @JoinColumn(name = "category_id", foreignKey = @ForeignKey(name = "fk_category_apartment"))
    private Category category;
}
