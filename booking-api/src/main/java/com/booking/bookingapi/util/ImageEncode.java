package com.booking.bookingapi.util;

import org.springframework.stereotype.Component;
import java.io.IOException;
import java.util.Base64;

@Component
public class ImageEncode {

    public String encodeImage(String imagePath) {
        try (var in = getClass().getResourceAsStream("/static/img" + imagePath)) {
            if (in == null) return null;
            byte[] imageBytes = in.readAllBytes();
            return "data:image/jpeg;base64," + Base64.getEncoder().encodeToString(imageBytes);
        } catch (IOException e) {
            return null;
        }
    }

}
