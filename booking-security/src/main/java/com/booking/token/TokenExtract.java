package com.booking.token;

import org.springframework.stereotype.Component;

@Component
public class TokenExtract {
    public String getToken(String token){
        return token.startsWith("Bearer ") ? token.substring(7) : token;
    }
}
