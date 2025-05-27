package com.booking.bookingapi.controller;

import com.booking.bookingapi.service.AuthService;
import com.booking.config.JwtService;
import com.booking.dto.UserDTO;
import com.booking.dto.response.LoginResponse;
import com.booking.entity.User;
import com.booking.exception.UserException;
import io.swagger.v3.oas.annotations.Operation;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/auth/users")
@AllArgsConstructor
public class AuthController {

    private final AuthService authService;
    private final JwtService jwtService;

    @PostMapping("/register")
    @Operation(summary = "User register", description = "Register a new user, name - unique, req;" +
            " pass - req; email - unique, req; phone - unique, req")
    public ResponseEntity<?> register(@RequestBody UserDTO userDTO) {
        try {
            authService.register(userDTO);
            return ResponseEntity.ok(Map.of("message", "Registration successful"));
        } catch (UserException e) {
            return ResponseEntity.status(400).body(Map.of("error", e.getMessage()));
        } catch (Exception e) {
            return ResponseEntity.status(500).body(Map.of("error", "Registration failed"));
        }
    }

    @PostMapping("/login")
    @Operation(summary = "User login", description = "Existing user log in, just username and password")
    public ResponseEntity<LoginResponse> login(@RequestBody UserDTO userDTO) {
        User authenticatedUser = authService.login(userDTO);
        String token = jwtService.generateToken(authenticatedUser);
        LoginResponse loginResponse = new LoginResponse();
        loginResponse.setToken(token);
        loginResponse.setExpiresIn(jwtService.getExpirationTime());
        return ResponseEntity.ok(loginResponse);
    }
}
