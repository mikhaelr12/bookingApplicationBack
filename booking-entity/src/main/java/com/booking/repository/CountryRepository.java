package com.booking.repository;

import com.booking.entity.country.Country;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CountryRepository extends JpaRepository<Country, Long> {
    List<Country> findAllByContinentId(Long continentId);
}
