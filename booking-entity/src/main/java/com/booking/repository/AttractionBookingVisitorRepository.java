package com.booking.repository;

import com.booking.entity.attraction.AttractionBookingVisitor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


public interface AttractionBookingVisitorRepository extends JpaRepository<AttractionBookingVisitor, Long> {

    @Query("""
           SELECT COALESCE(SUM(v.quantity), 0)
           FROM AttractionBookingVisitor v
           WHERE v.booking.attraction.id = :attractionId
             AND v.booking.attractionTime.id = :timeId
           """)
    int totalPeopleOnSlot(@Param("attractionId")Long attractionId, @Param("timeId")Long timeId);
}
