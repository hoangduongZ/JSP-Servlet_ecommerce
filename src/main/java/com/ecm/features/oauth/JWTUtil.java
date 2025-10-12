package com.ecm.features.oauth;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.auth0.jwt.interfaces.JWTVerifier;

import java.time.Instant;
import java.util.Date;

public class JWTUtil {
    private static final String SECRET = "super-secret-key-123";
    private static final Algorithm algorithm = Algorithm.HMAC256(SECRET);
    private static final int EXPIRY_HOURS = 24;

    public static String createToken(String userId, String email) {
        return JWT.create()
                .withSubject(userId)
                .withClaim("email", email)
                .withIssuedAt(new Date())
                .withExpiresAt(Date.from(Instant.now().plusSeconds(EXPIRY_HOURS * 3600)))
                .withIssuer("servlet-ecm-app")
                .sign(algorithm);
    }

    public static DecodedJWT verifyToken(String token) throws JWTVerificationException {
        JWTVerifier verifier = JWT.require(algorithm)
                .withIssuer("servlet-ecm-app")
                .build();
        return verifier.verify(token);
    }
}
