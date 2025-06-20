package com.booking.dto.response;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class LoginResponse {

    private String token;
    private Long expiresIn;
}
