package com.booking.exception;


import java.io.Serial;

public class ContinentException extends RuntimeException {
    @Serial
    private static final long serialVersionUID = 1L;
    public ContinentException(String message) {
        super(message);
    }
}
