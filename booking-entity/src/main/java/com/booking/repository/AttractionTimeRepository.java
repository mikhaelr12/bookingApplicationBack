package com.booking.repository;

import com.booking.entity.attraction.AttractionTime;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;
import java.time.LocalTime;

public interface AttractionTimeRepository extends JpaRepository<AttractionTime, Long> {

    AttractionTime findByAttractionDateAndAttractionTimeAndAttraction_Id(LocalDate attractionDate, LocalTime attractionTime, Long attractionId);
}
