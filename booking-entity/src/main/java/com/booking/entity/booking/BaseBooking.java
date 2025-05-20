package com.booking.entity.booking;


import com.booking.entity.User;
import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDate;

@MappedSuperclass
@Data
public abstract class BaseBooking {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "booking_id_seq")
    @SequenceGenerator(name = "booking_id_seq", allocationSize = 1, sequenceName = "booking_id_seq")
    private Long id;

    @Column(name = "check_in", nullable = false)
    private LocalDate checkIn;

    @Column(name = "check_out", nullable = false)
    private LocalDate checkOut;

    @Column(name = "no_guests", nullable = false)
    private Integer noGuests;

    @ManyToOne
    @JoinColumn(name = "user_id", foreignKey = @ForeignKey(name = "fk_user_apb"))
    private User user;

}