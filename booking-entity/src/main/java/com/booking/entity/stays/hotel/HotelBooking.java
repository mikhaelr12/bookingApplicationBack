package com.booking.entity.stays.hotel;

import com.booking.entity.booking.BaseBooking;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;

@Entity
@Table(name = "hotel_bookings")
@Getter @Setter
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class HotelBooking extends BaseBooking {

    @ManyToOne
    @JoinColumn(name = "room_id", foreignKey = @ForeignKey(name = "fk_room_hb"))
    private HotelRoom hotelRoom;

    @ManyToOne
    @JoinColumn(name = "hotel_id", foreignKey = @ForeignKey(name = "fk_hotel_hb"))
    private Hotel hotel;
}
