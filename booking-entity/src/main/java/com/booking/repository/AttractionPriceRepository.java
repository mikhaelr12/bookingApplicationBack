package com.booking.repository;

import com.booking.entity.attraction.AttractionPrice;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AttractionPriceRepository extends JpaRepository<AttractionPrice, Long> {
}
