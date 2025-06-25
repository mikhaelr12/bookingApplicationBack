package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.BookingService;
import com.booking.bookingapi.util.StayPriceCalculator;
import com.booking.dto.request.BookingRequest;
import com.booking.dto.response.BookingResponse;
import com.booking.entity.User;
import com.booking.entity.stays.apartment.Apartment;
import com.booking.entity.stays.apartment.ApartmentBooking;
import com.booking.enums.BookingStatus;
import com.booking.exception.ApartmentException;
import com.booking.exception.BookingException;
import com.booking.exception.UserException;
import com.booking.repository.ApartmentBookingRepository;
import com.booking.repository.ApartmentRepository;
import com.booking.token.UserExtract;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service("apartment-booking")
@AllArgsConstructor
public class ApartmentBookingServiceImpl implements BookingService<BookingResponse> {

    private final UserExtract userExtract;
    private final ApartmentBookingRepository apartmentBookingRepository;
    private final ApartmentRepository apartmentRepository;
    private final StayPriceCalculator stayPriceCalculator;

    @Override
    public void validateAndBook(String token, BookingRequest bookingDTO) {
        User user = userExtract.getUser(token);

        if (user == null)
            throw new UserException("User not found");

        List<ApartmentBooking> bookings = apartmentBookingRepository.findAllByApartmentId(bookingDTO.getTargetId());

        if (bookings.isEmpty())
            throw new BookingException("Bookings not found");

        for (ApartmentBooking booking : bookings) {
            if(bookingDTO.getCheckIn().isBefore(booking.getCheckOut()) &&
            bookingDTO.getCheckOut().isAfter(booking.getCheckIn())) {
                throw new BookingException("The apartment is booked between: "
                        + bookingDTO.getCheckIn() + " and "
                        + bookingDTO.getCheckOut());
            }
        }

        Apartment apartment = apartmentRepository.findById(bookingDTO.getTargetId())
                .orElseThrow(() -> new ApartmentException("No apartment found with id: " + bookingDTO.getTargetId()));

        apartmentBookingRepository.save(ApartmentBooking.builder()
                        .apartment(apartment)
                        .checkIn(bookingDTO.getCheckIn())
                        .checkOut(bookingDTO.getCheckOut())
                        .finalPrice(stayPriceCalculator.calculatePrice(bookingDTO.getCheckIn(),
                                bookingDTO.getCheckOut(), apartment.getPrice()))
                        .noGuests(bookingDTO.getNoPeople())
                        .status(BookingStatus.PENDING)
                        .user(user)
                .build());
    }

    @Override
    public List<BookingResponse> getAllBookings(String jwt) {
        User user = userExtract.getUser(jwt);
        List<ApartmentBooking> bookings = apartmentBookingRepository.findAllByUserId(user.getId());

        if (bookings.isEmpty()) {
            throw new UserException("User does not have any bookings");
        }

        return bookings.stream().map(b -> BookingResponse.builder()
                .bookingId(b.getId())
                .bookedAt(b.getCreatedAt())
                .name(b.getApartment().getApartmentName())
                .address(b.getApartment().getAddress())
                .countryName(b.getApartment().getCity().getCountry().getCountryName())
                .cityName(b.getApartment().getCity().getCityName())
                .checkIn(b.getCheckIn())
                .checkOut(b.getCheckOut())
                .finalPrice(b.getFinalPrice())
                .status(b.getStatus().toString())
                .build()
        ).collect(Collectors.toList());
    }
}
