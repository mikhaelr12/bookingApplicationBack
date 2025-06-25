package com.booking.repository;

import com.booking.entity.attraction.Attraction;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AttractionRepository extends JpaRepository<Attraction, Long> {
    List<Attraction> findByCityId(Long cityId);
}
