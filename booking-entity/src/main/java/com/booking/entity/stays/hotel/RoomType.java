package com.booking.entity.stays.hotel;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "room_types")
@Data
public class RoomType {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "rt_id_seq")
    @SequenceGenerator(name = "rt_id_seq", allocationSize = 1, sequenceName = "rt_id_seq")
    private Long id;

    @Column(name = "room_type", nullable = false)
    private String roomType;
}
