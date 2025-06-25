package com.booking.bookingapi.service;

import com.booking.dto.request.LoginRequest;
import com.booking.dto.request.RegisterRequest;
import com.booking.entity.User;

public interface AuthService {
    void register(RegisterRequest request);

    User login(LoginRequest request);
}
