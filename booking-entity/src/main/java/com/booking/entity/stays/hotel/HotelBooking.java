package com.booking.entity.stays.hotel;

import com.booking.entity.booking.BaseBooking;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "hotel_bookings")
@Getter @Setter
public class HotelBooking extends BaseBooking {

    @ManyToOne
    @JoinColumn(name = "room_id", foreignKey = @ForeignKey(name = "fk_room_hb"))
    private HotelRoom hotelRoom;

}
