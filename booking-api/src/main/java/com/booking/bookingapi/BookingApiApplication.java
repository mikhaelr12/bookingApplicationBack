package com.booking.bookingapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Component;
@SpringBootApplication
@EntityScan("com.booking.entity")
@EnableJpaRepositories("com.booking.repository")
@ComponentScan(basePackages = {
        "com.booking.bookingapi",
        "com.booking.config",
        "com.booking.repository",
        "com.booking.entity"
})
public class BookingApiApplication {
    public static void main(String[] args) {
        SpringApplication.run(BookingApiApplication.class, args);
    }
}

