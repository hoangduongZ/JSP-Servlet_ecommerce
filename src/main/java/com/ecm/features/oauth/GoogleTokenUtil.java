package com.ecm.features.oauth;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

public class GoogleTokenUtil {
    private static final Gson gson = new Gson();

    public static class TokenResponse {
        public String accessToken;
        public String refreshToken;
        public String idToken;
        public String tokenType;
        public int expiresIn;
    }

    public static class GoogleUserInfo {
        public String sub;
        public String email;
        public boolean emailVerified;
        public String name;
        public String givenName;
        public String familyName;
        public String picture;
        public String locale;
    }

    public static TokenResponse exchangeCodeForTokens(String code) throws IOException {
        String postData = "client_id=" + URLEncoder.encode(GoogleOAuthConfig.CLIENT_ID, "UTF-8")
                + "&client_secret=" + URLEncoder.encode(GoogleOAuthConfig.CLIENT_SECRET, "UTF-8")
                + "&code=" + URLEncoder.encode(code, "UTF-8")
                + "&grant_type=authorization_code"
                + "&redirect_uri=" + URLEncoder.encode(GoogleOAuthConfig.REDIRECT_URI, "UTF-8");

        URL url = new URL(GoogleOAuthConfig.TOKEN_URL);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("POST");
        connection.setDoOutput(true);
        connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");

        try (OutputStream os = connection.getOutputStream()) {
            os.write(postData.getBytes());
        }

        try (BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()))) {
            StringBuilder response = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                response.append(line);
            }

            JsonObject jsonResponse = gson.fromJson(response.toString(), JsonObject.class);

            TokenResponse tokenResponse = new TokenResponse();
            tokenResponse.accessToken = jsonResponse.get("access_token").getAsString();
            if (jsonResponse.has("refresh_token")) {
                tokenResponse.refreshToken = jsonResponse.get("refresh_token").getAsString();
            }
            if (jsonResponse.has("id_token")) {
                tokenResponse.idToken = jsonResponse.get("id_token").getAsString();
            }
            tokenResponse.tokenType = jsonResponse.get("token_type").getAsString();
            tokenResponse.expiresIn = jsonResponse.get("expires_in").getAsInt();

            return tokenResponse;
        }
    }

    public static GoogleUserInfo getUserInfo(String accessToken) throws IOException {
        URL url = new URL(GoogleOAuthConfig.USERINFO_URL);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("GET");
        connection.setRequestProperty("Authorization", "Bearer " + accessToken);

        try (BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()
        , StandardCharsets.UTF_8))) {
            StringBuilder response = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                response.append(line);
            }

            return gson.fromJson(response.toString(), GoogleUserInfo.class);
        }
    }
}
