package com.booking.exception;


import java.io.Serial;

public class AttractionException extends RuntimeException {
    @Serial
    private static final long serialVersionUID = 1L;
    public AttractionException(String message) {
        super(message);
    }
}
