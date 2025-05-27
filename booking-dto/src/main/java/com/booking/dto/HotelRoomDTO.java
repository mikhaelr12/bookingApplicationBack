package com.booking.dto;

import com.booking.dto.response.RoomTypeDTO;
import com.booking.entity.stays.hotel.RoomType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class HotelRoomDTO {

    private Long id;
    private Integer roomNumber;
    private String description;
    private Double price;
    private Integer maxGuests;
    private String imageUrl;
    private RoomTypeDTO roomType;
    private HotelDTO hotel;
}
