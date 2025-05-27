package com.booking.repository;

import com.booking.entity.stays.hotel.HotelReview;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface HotelReviewRepository extends JpaRepository<HotelReview, Long> {

    List<HotelReview> findAllByCheckedFalse();

    @Query("select avg(hr.rating) from HotelReview hr where hr.hotel.id = :hotelId AND hr.checked = true")
    Double calculateAverageRatingByHotelId(@Param("hotelId") Long hotelId);

    List<HotelReview> findAllByHotelId(Long targetId);
}
