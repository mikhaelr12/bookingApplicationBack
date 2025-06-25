package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.BookingService;
import com.booking.dto.AttractionVisitorsDTO;
import com.booking.dto.request.AttractionBookingRequest;
import com.booking.dto.response.AttractionBookingResponse;
import com.booking.entity.User;
import com.booking.entity.attraction.*;
import com.booking.enums.BookingStatus;
import com.booking.exception.AttractionException;
import com.booking.exception.UserException;
import com.booking.repository.*;
import com.booking.token.UserExtract;
import jakarta.transaction.Transactional;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service("attraction-booking")
@AllArgsConstructor
public class AttractionBookingServiceImpl implements BookingService<AttractionBookingResponse> {

    private UserExtract userExtract;
    private AttractionPriceRepository attractionPriceRepository;
    private AttractionTimeRepository attractionTimeRepository;
    private AttractionBookingRepository attractionBookingRepository;
    private AttractionBookingVisitorRepository attractionBookingVisitor;
    private AttractionRepository attractionRepository;

    @Override
    @Transactional
    public void bookAttraction(String jwt, AttractionBookingRequest request) {
        User user = userExtract.getUser(jwt);

        if (user == null)
            throw new UserException("No user found");

        //check attraction
        Attraction attraction = attractionRepository.findById(request.getAttractionId())
                .orElseThrow(() -> new AttractionException("Attraction not found"));

        //check the times for it
        AttractionTime slot = attractionTimeRepository
                .findByAttractionDateAndAttractionTimeAndAttraction_Id(
                        request.getAttractionDate(), request.getAttractionTime(), request.getAttractionId());

        if (slot == null)
            throw new AttractionException("No slot found");

        //check all the people on a certain attraction
        int alreadyBooked = attractionBookingVisitor
                .totalPeopleOnSlot(request.getAttractionId(),slot.getId());

        int requested = request.getVisitorsDTOS().stream()
                .mapToInt(AttractionVisitorsDTO::getQuantity)
                .sum();

        //check if the requested number of people will not exceed the max people
        if (alreadyBooked + requested > slot.getMaxPeople())
            throw new AttractionException("Max people exceeded");

        //map the visitors, key - id, value - price
        Map<Long, Double> pricePerCat = attractionPriceRepository
                .findByAttractionId(attraction.getId())
                .stream()
                .collect(Collectors.toMap(
                        p -> p.getVisitorCategory().getId(),
                        AttractionPrice::getAttractionPrice));

        AttractionBooking attractionBooking = AttractionBooking.builder()
                .user(user)
                .attraction(attraction)
                .attractionTime(slot)
                .status(BookingStatus.PENDING)
                .build();

        double finalPrice = 0;

        //traverse the visitors and calculate the final price
        for (AttractionVisitorsDTO visitorsDTO : request.getVisitorsDTOS()) {
            Double unit = pricePerCat.get(visitorsDTO.getVisitorId());

            if (unit == null)
                throw new AttractionException("No price for this unit");

            VisitorCategory proxy = new VisitorCategory();
            proxy.setId(visitorsDTO.getVisitorId());

            AttractionBookingVisitor bookingVisitor = AttractionBookingVisitor.builder()
                    .booking(attractionBooking)
                    .category(proxy)
                    .quantity(visitorsDTO.getQuantity())
                    .build();

            attractionBooking.getVisitors().add(bookingVisitor);
            finalPrice += unit * visitorsDTO.getQuantity();
        }

        attractionBooking.setFinalPrice(finalPrice);
        attractionBookingRepository.save(attractionBooking);
    }

    @Override
    public List<AttractionBookingResponse> getAllBookings(String jwt) {
        return List.of();
    }
}
