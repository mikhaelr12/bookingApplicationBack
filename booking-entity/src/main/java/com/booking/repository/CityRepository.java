package com.booking.repository;

import com.booking.entity.country.City;
import com.booking.entity.country.Country;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CityRepository extends JpaRepository<City, Long> {
}
