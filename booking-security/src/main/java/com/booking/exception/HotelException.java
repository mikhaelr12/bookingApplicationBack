package com.booking.exception;

import java.io.Serial;

public class HotelException extends RuntimeException {

  @Serial
  private static final long serialVersionUID = 1L;
  public HotelException(String message) {
    super(message);
  }
}
