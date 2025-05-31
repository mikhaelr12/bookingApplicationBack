package com.booking.repository;

import com.booking.entity.stays.apartment.ApartmentBooking;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ApartmentBookingRepository extends JpaRepository<ApartmentBooking, Long> {
    List<ApartmentBooking> findAllByApartmentId(Long targetId);

    List<ApartmentBooking> findAllByUserId(Long id);
}
