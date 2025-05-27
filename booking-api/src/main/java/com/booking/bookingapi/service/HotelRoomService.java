package com.booking.bookingapi.service;

import com.booking.dto.HotelRoomDTO;

import java.util.List;

public interface HotelRoomService {
    List<HotelRoomDTO> getHotelRooms(Long hotelId);
}
