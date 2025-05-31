package com.booking.repository;

import com.booking.entity.stays.hotel.HotelBooking;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface HotelBookingRepository extends JpaRepository<HotelBooking, Long> {

    List<HotelBooking> findByHotelRoom_IdIn(List<Long> roomIds);

    List<HotelBooking> findAllByUserId(Long id);
}
