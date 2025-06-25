package com.booking.repository;

import com.booking.entity.attraction.VisitorCategory;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;


public interface VisitorCategoryRepository extends JpaRepository<VisitorCategory, Long> {

}
