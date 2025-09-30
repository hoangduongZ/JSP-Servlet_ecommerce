package com.ecm.features.oauth;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.UUID;

@WebServlet("/auth/google")
public class GoogleLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String state = UUID.randomUUID().toString();
        session.setAttribute("oauth_state", state);

        // Tạo URL authorization
        String authUrl = GoogleOAuthConfig.AUTH_URL + "?"
                + "client_id=" + URLEncoder.encode(GoogleOAuthConfig.CLIENT_ID, "UTF-8")
                + "&redirect_uri=" + URLEncoder.encode(GoogleOAuthConfig.REDIRECT_URI, "UTF-8")
                + "&response_type=code"
                + "&scope=" + URLEncoder.encode(GoogleOAuthConfig.SCOPE, "UTF-8")
                + "&state=" + URLEncoder.encode(state, "UTF-8")
                + "&access_type=offline"
                + "&prompt=consent";
        response.sendRedirect(authUrl);
    }
}
