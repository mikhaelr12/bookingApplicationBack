package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.AttractionBookingService;
import com.booking.dto.request.AttractionBookingRequest;
import com.booking.entity.User;
import com.booking.entity.attraction.Attraction;
import com.booking.exception.AttractionException;
import com.booking.exception.UserException;
import com.booking.repository.*;
import com.booking.token.UserExtract;
import jakarta.transaction.Transactional;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class AttractionBookingServiceImpl implements AttractionBookingService {

    private UserExtract userExtract;
    private AttractionPriceRepository attractionPriceRepository;
    private AttractionTimeRepository attractionTimeRepository;
    private AttractionRepository attractionRepository;
    private AttractionBookingRepository attractionBookingRepository;
    private AttractionBookingVisitorRepository attractionBookingVisitor;

    @Override
    @Transactional
    public void validateAndBook(String jwt, AttractionBookingRequest attractionBookingRequest) {
        User user = userExtract.getUser(jwt);

        if (user == null)
            throw new UserException("No user found");

        Attraction attraction = attractionRepository.findById(attractionBookingRequest.getAttractionId())
                .orElseThrow(() -> new AttractionException("No attraction found"));

        int totalPeople = attractionBookingVisitor
                .totalPeopleOnSlot(attractionBookingRequest.getAttractionId(),
                attractionBookingRequest.getAttractionTimeId()
                );

        if (attractionBookingRequest.getVisitorsDTOS().size() > totalPeople) {
            throw new AttractionException("Total people exceeded");
        }


    }
}
