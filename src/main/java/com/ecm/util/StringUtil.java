package com.ecm.util;

import com.ecm.exception.EcmException;

public class StringUtil {
    private StringUtil() {
    }
    public static String sanitizeInput(String input) throws EcmException {
        if (input == null) {
            throw new EcmException("Input cannot be null");
        }
        return input.trim().isEmpty() ? null : input.trim();
    }
}
