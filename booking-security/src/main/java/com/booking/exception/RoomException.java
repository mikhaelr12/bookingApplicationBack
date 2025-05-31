package com.booking.exception;

import org.springframework.stereotype.Service;

import java.io.Serial;

public class RoomException extends RuntimeException {
    @Serial
    private static final long serialVersionUID = 1L;
    public RoomException(String message) {
        super(message);
    }
}
