package com.booking.repository;

import com.booking.entity.stays.apartment.ApartmentReview;
import com.booking.entity.stays.hotel.HotelReview;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ApartmentReviewRepository extends JpaRepository<ApartmentReview, Long> {

    List<ApartmentReview> findAllByCheckedFalse();

    @Query("select avg(ar.rating) from ApartmentReview ar where ar.apartment.id = :apartmentId AND ar.checked = true")
    Double calculateAverageRatingByHotelId(@Param("apartmentId") Long apartmentId);

    List<ApartmentReview> findByApartmentId(Long targetId);
}
