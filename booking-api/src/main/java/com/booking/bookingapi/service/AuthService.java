package com.booking.bookingapi.service;

import com.booking.dto.UserDTO;
import com.booking.entity.User;

public interface AuthService {
    void register(UserDTO userDTO);

    User login(UserDTO userDTO);
}
