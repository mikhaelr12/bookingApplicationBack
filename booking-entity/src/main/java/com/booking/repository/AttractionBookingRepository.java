package com.booking.repository;

import com.booking.entity.attraction.AttractionBooking;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AttractionBookingRepository extends JpaRepository<AttractionBooking, Long> {

}
