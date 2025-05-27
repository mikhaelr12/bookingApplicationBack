package com.booking.repository;

import com.booking.entity.stays.hotel.RoomType;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomTypeRepository extends JpaRepository<RoomType, Long> {
}
