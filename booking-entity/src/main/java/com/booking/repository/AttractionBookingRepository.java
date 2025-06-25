package com.booking.repository;

import com.booking.entity.attraction.AttractionBooking;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AttractionBookingRepository extends JpaRepository<AttractionBooking, Long> {

    List<AttractionBooking> findAllByUserId(Long id);
}
