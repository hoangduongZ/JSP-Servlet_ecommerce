package com.ecm.exception;

public class EcmException extends RuntimeException{
    public EcmException() {
    }

    public EcmException(String message) {
        super(message);
    }

    public EcmException(String message, Throwable cause) {
        super(message, cause);
    }

    public EcmException(Throwable cause) {
        super(cause);
    }
}
