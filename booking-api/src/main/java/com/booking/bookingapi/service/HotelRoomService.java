package com.booking.bookingapi.service;

import com.booking.dto.hotel.HotelRoomDTO;

import java.util.List;

public interface HotelRoomService {
    List<HotelRoomDTO> getHotelRooms(Long hotelId);
}
