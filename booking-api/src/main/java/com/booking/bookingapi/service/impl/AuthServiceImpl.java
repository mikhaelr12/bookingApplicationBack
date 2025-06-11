package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.AuthService;
import com.booking.dto.UserDTO;
import com.booking.entity.User;
import com.booking.exception.UserException;
import com.booking.repository.UserRepository;
import com.booking.repository.UserRoleRepository;
import lombok.AllArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import java.util.Optional;

@Service
@AllArgsConstructor
public class AuthServiceImpl implements AuthService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final UserRoleRepository userRoleRepository;
    private final AuthenticationManager authenticationManager;

    @Override
    public void register(UserDTO userDTO) {
        Optional<User> user = userRepository.findByUsername(userDTO.getUsername());

        if (user.isPresent())
            throw new UserException("Username already in use");

        user = userRepository.findByEmail(userDTO.getEmail());

        if (user.isPresent())
            throw new UserException("Email already in use");

        user = userRepository.findByPhoneNumber(userDTO.getPhone());

        if (user.isPresent())
            throw new UserException("Phone number already in use");

        userRepository.save(User.builder()
                        .username(userDTO.getUsername())
                        .password(passwordEncoder.encode(userDTO.getPassword()))
                        .phoneNumber(userDTO.getPhone())
                        .role(userRoleRepository.findById(1L)
                                .orElseThrow(() -> new UserException("Role Not Found")))
                .build());
    }

    @Override
    public User login(UserDTO input) {
        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        input.getUsername(),
                        input.getPassword()
                )
        );

        return userRepository.findByUsername(input.getUsername())
                .orElseThrow();
    }
}
