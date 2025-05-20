package com.booking.bookingapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EntityScan("com.booking.entity")
@EnableJpaRepositories("com.booking.repository")
public class BookingApiApplication {

    public static void main(String[] args) {
        SpringApplication.run(BookingApiApplication.class, args);
    }

}
