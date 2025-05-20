package com.booking.entity.stays.hotel;


import com.booking.entity.Category;
import com.booking.entity.country.City;
import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "hotels")
@Data
public class Hotel {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "hotel_id_seq")
    @SequenceGenerator(name = "hotel_id_seq", allocationSize = 1, sequenceName = "hotel_id_seq")
    private Long id;

    @Column(name = "hotel_name", nullable = false)
    private String hotelName;

    @Column(name = "address", nullable = false)
    private String address;

    @Column(name = "rating")
    private Double rating;

    @Column(name = "image_url")
    private String imageUrl;

    @ManyToOne
    @JoinColumn(name = "city_id", foreignKey = @ForeignKey(name = "fk_city_hotel"))
    private City city;

    @ManyToOne
    @JoinColumn(name = "category_id", foreignKey = @ForeignKey(name = "fk_category_hotel"))
    private Category category;
}
