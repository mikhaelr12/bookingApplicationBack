package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.BookingService;
import com.booking.dto.request.BookingRequest;
import com.booking.dto.response.HotelBookingResponse;
import com.booking.entity.User;
import com.booking.entity.stays.hotel.HotelBooking;
import com.booking.entity.stays.hotel.HotelRoom;
import com.booking.enums.BookingStatus;
import com.booking.exception.RoomException;
import com.booking.exception.UserException;
import com.booking.repository.HotelBookingRepository;
import com.booking.repository.HotelRoomRepository;
import com.booking.token.UserExtract;
import com.booking.bookingapi.util.StayPriceCalculator;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.stream.Collectors;

@Service("hotel-booking")
@AllArgsConstructor
public class HotelBookingServiceImpl implements BookingService<HotelBookingResponse> {

    private final UserExtract userExtract;
    private final HotelRoomRepository hotelRoomRepository;
    private final HotelBookingRepository hotelBookingRepository;
    private final StayPriceCalculator stayPriceCalculator;

    @Override
    public void validateAndBook(String token, BookingRequest bookingDTO) {
        User user = userExtract.getUser(token);

        if (user == null)
            throw new UserException("User not found");

        List<HotelRoom> rooms = hotelRoomRepository.findAllByHotelIdAndRoomTypeId(bookingDTO.getTargetId(),
                bookingDTO.getRoomTypeId())
                .stream().filter(r -> r.getMaxGuests() >= bookingDTO.getNoPeople()
        ).toList();


        if(rooms.isEmpty()) {
            throw new RoomException("No rooms with capacity of " + bookingDTO.getNoPeople());
        }

        List<Long> roomIds = rooms.stream().map(HotelRoom::getId).toList();
        List<HotelBooking> bookings = hotelBookingRepository.findByHotelRoom_IdIn(roomIds);
        HotelRoom availableRoom = rooms.stream()
                .filter(room -> bookings.stream()
                        .filter(b -> b.getHotelRoom().getId().equals(room.getId()) &&
                                b.getCheckIn() != null && b.getCheckOut() != null)
                        .noneMatch(existing ->
                                bookingDTO.getCheckIn().isBefore(existing.getCheckOut()) &&
                                        bookingDTO.getCheckOut().isAfter(existing.getCheckIn())
                        )
                )
                .findFirst()
                .orElseThrow(() -> new RoomException("All rooms are booked for the selected period."));
        

        hotelBookingRepository.save(HotelBooking.builder()
                        .hotelRoom(availableRoom)
                        .hotel(availableRoom.getHotel())
                        .user(user)
                        .checkIn(bookingDTO.getCheckIn())
                        .checkOut(bookingDTO.getCheckOut())
                        .finalPrice(stayPriceCalculator.calculatePrice(
                                        bookingDTO.getCheckIn(),
                                        bookingDTO.getCheckOut(),
                                        availableRoom.getPrice()))
                        .status(BookingStatus.PENDING)
                        .noGuests(bookingDTO.getNoPeople())
                .build());
    }

    @Override
    public List<HotelBookingResponse> getAllBookings(String jwt) {
        User user = userExtract.getUser(jwt);

        if (user == null)
            throw new UserException("User not found");

        List<HotelBooking> bookings = hotelBookingRepository.findAllByUserId(user.getId());

        if(bookings.isEmpty()) {
            throw new UserException("No bookings found for user: " + user.getUsername());
        }

        return bookings.stream()
                .map(b -> HotelBookingResponse.builder()
                .bookingId(b.getId())
                .address(b.getHotel().getAddress())
                .name(b.getHotel().getHotelName())
                .checkIn(b.getCheckIn())
                .checkOut(b.getCheckOut())
                .finalPrice(b.getFinalPrice())
                .status(b.getStatus().toString())
                .bookedAt(b.getCreatedAt())
                .roomType(b.getHotelRoom().getRoomType().getRoomType())
                .roomNumber(b.getHotelRoom().getRoomNumber())
                .cityName(b.getHotel().getCity().getCityName())
                .countryName(b.getHotel().getCity().getCountry().getCountryName())
                .build()
        ).collect(Collectors.toList());
    }
}
