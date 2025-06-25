package com.booking.repository;

import com.booking.entity.attraction.AttractionPrice;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AttractionPriceRepository extends JpaRepository<AttractionPrice, Long> {

    AttractionPrice findByVisitorCategoryIdAndAttractionId(Long visitorId, Long attractionId);

    List<AttractionPrice> findByAttractionId(Long id);
}
