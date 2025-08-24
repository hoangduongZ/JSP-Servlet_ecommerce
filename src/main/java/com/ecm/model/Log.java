package com.ecm.model;

import lombok.Data;

@Data
public class Log {
    private int id;
    private String message;
    private String level;
    private String timestamp;

    public Log() {}

    public Log(int id, String message, String level, String timestamp) {
        this.id = id;
        this.message = message;
        this.level = level;
        this.timestamp = timestamp;
    }
}
