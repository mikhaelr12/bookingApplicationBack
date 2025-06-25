package com.booking.repository;

import com.booking.entity.attraction.Attraction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface AttractionRepository extends JpaRepository<Attraction, Long> {
    List<Attraction> findByCityId(Long cityId);

}
