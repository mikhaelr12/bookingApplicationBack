package com.booking.repository;

import com.booking.entity.country.City;
import com.booking.entity.stays.apartment.Apartment;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface ApartmentRepository extends JpaRepository<Apartment, Long> {

    List<Apartment> findByCityIn(List<City> cities);

    List<Apartment> findAllByCityId(Long cityId);
}
