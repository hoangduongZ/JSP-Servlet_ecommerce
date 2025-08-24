package com.ecm.util;

import javax.servlet.http.HttpServletResponse;

public class ServletUtil {
    public static synchronized void encodeResponse(HttpServletResponse response){
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
    }
}
