package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.HotelRoomService;
import com.booking.dto.hotel.HotelDTO;
import com.booking.dto.hotel.HotelRoomDTO;
import com.booking.dto.hotel.RoomTypeDTO;
import com.booking.entity.stays.hotel.HotelRoom;
import com.booking.exception.RoomException;
import com.booking.repository.HotelRoomRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class HotelRoomServiceImpl implements HotelRoomService {

    private final HotelRoomRepository hotelRoomRepository;

    @Override
    public List<HotelRoomDTO> getHotelRooms(Long hotelId) {
        List<HotelRoom> hotelRooms = hotelRoomRepository.findAllByHotelId(hotelId);

        if(hotelRooms.isEmpty())
            throw new RoomException("Rooms not Found");

        return hotelRooms.stream().map(r -> HotelRoomDTO.builder()
                .id(r.getId())
                .roomNumber(r.getRoomNumber())
                .price(r.getPrice())
                .maxGuests(r.getMaxGuests())
                .imageUrl(r.getImageUrl())
                .description(r.getDescription())
                .roomType(RoomTypeDTO.builder()
                        .id(r.getRoomType().getId())
                        .roomType(r.getRoomType().getRoomType())
                        .build())
                .hotel(HotelDTO.builder()
                        .id(r.getHotel().getId())
                        .name(r.getHotel().getHotelName())
                        .address(r.getHotel().getAddress())
                        .build())
                .build()).toList();
    }
}
