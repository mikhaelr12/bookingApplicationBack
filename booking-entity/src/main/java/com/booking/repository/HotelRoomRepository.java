package com.booking.repository;

import com.booking.entity.stays.hotel.HotelRoom;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface HotelRoomRepository extends JpaRepository<HotelRoom, Long> {
    List<HotelRoom> findAllByHotelId(Long hotelId);

    List<HotelRoom> findAllByHotelIdAndRoomTypeId(Long hotelId, Long roomTypeId);
}
