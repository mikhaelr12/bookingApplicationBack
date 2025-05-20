package com.booking.entity.stays.apartment;

import com.booking.entity.booking.BaseBooking;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "apartment_bookings")
@Getter
@Setter
public class ApartmentBooking extends BaseBooking {

    @ManyToOne
    @JoinColumn(name = "apartment_id", foreignKey = @ForeignKey(name = "fk_apartment_apb"))
    private Apartment apartmentRoom;
}
