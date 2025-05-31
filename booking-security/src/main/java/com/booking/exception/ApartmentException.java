package com.booking.exception;

import java.io.Serial;

public class ApartmentException extends RuntimeException {
    @Serial
    private static final long serialVersionUID = 1L;
    public ApartmentException(String message) {
        super(message);
    }
}
