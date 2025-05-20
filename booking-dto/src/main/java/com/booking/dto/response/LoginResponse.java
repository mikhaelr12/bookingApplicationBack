package com.booking.dto.response;

import lombok.Data;

@Data
public class LoginResponse {

    private String token;
    private Long expiresIn;
}
