package com.booking.entity.stays.hotel;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "hotel_rooms")
@Data
public class HotelRoom {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "room_id_seq")
    @SequenceGenerator(name = "room_id_seq", allocationSize = 1, sequenceName = "room_id_seq")
    private Long id;

    @Column(name = "room_number", nullable = false)
    private Integer roomNumber;

    @Column(name = "description", nullable = false)
    private String description;

    @Column(name = "price", nullable = false)
    private Double price;

    @Column(name = "max_guests")
    private Integer maxGuests;

    @Column(name = "image_url")
    private String imageUrl;

    @ManyToOne
    @JoinColumn(name = "rt_id", foreignKey = @ForeignKey(name = "fk_rt_room"))
    private RoomType roomType;

    @ManyToOne
    @JoinColumn(name = "hotel_id", foreignKey = @ForeignKey(name = "fk_hotel_room"))
    private Hotel hotel;
}
