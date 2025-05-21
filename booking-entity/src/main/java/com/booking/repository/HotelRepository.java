package com.booking.repository;

import com.booking.entity.country.City;
import com.booking.entity.stays.hotel.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface HotelRepository extends JpaRepository<Hotel, Long> {

    List<Hotel> findAllByCityId(Long cityId);
}
