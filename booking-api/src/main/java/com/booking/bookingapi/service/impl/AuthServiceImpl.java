package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.AuthService;
import com.booking.dto.request.LoginRequest;
import com.booking.dto.request.RegisterRequest;
import com.booking.entity.User;
import com.booking.exception.UserException;
import com.booking.repository.UserRepository;
import com.booking.repository.UserRoleRepository;
import lombok.AllArgsConstructor;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class AuthServiceImpl implements AuthService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final UserRoleRepository userRoleRepository;
    private final AuthenticationManager authenticationManager;

    @Override
    public void register(RegisterRequest request) {
       try {
           userRepository.save(User.builder()
                           .email(request.getEmail())
                           .username(request.getUsername())
                           .password(passwordEncoder.encode(request.getPassword()))
                           .role(userRoleRepository.findByRoleName("User"))
                           .phoneNumber(request.getPhone())
                   .build());
       }
       catch (DataIntegrityViolationException e) {
           throw new UserException("Username / email / phone already in use");
       }
    }

    @Override
    public User login(LoginRequest request) {
        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        request.getUsername(),
                        request.getPassword()
                )
        );

        return userRepository.findByUsername(request.getUsername())
                .orElseThrow();
    }
}
