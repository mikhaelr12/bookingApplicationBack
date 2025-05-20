package com.booking.token;

import com.booking.config.JwtService;
import com.booking.entity.User;
import com.booking.exception.UserException;
import com.booking.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@AllArgsConstructor
public class UserExtract {

    private JwtService jwtService;
    private UserRepository userRepository;

    public User getUser(String jwtToken) {
        String username = jwtService.extractUsername(jwtToken);
        return userRepository.findByUsername(username)
                .orElseThrow(() -> new UserException("No user found"));
    }
}
