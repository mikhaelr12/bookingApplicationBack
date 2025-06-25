package com.booking.repository;

import com.booking.entity.attraction.AttractionTime;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AttractionTimeRepository extends JpaRepository<AttractionTime, Long> {
}
