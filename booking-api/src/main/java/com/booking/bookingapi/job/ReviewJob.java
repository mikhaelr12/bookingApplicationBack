package com.booking.bookingapi.job;

import com.booking.bookingapi.service.impl.ApartmentServiceImpl;
import com.booking.bookingapi.service.impl.HotelReviewServiceImpl;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
@Slf4j
@RequiredArgsConstructor
public class ReviewJob {

    private final HotelReviewServiceImpl hotelReviewService;

//    @Transactional
//    @Scheduled(cron = "0 */5 * * * *")
//    public void updateHotelsRating(){
//      log.info("Updating rating");
//      hotelReviewService.updateRating();
//      log.info("Updated rating");
//    }
}
