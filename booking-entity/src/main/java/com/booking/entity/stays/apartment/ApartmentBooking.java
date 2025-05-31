package com.booking.entity.stays.apartment;

import com.booking.entity.booking.BaseBooking;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;

@Entity
@Table(name = "apartment_bookings")
@Getter
@Setter
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class ApartmentBooking extends BaseBooking {

    @ManyToOne
    @JoinColumn(name = "apartment_id", foreignKey = @ForeignKey(name = "fk_apartment_apb"))
    private Apartment apartment;
}
