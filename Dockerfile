FROM quay.io/keycloak/keycloak:24.0.4
# Build Keycloak with PostgreSQL support
RUN /opt/keycloak/bin/kc.sh build --db=postgres

# Non-sensitive runtime settings
ENV KC_DB=postgres
ENV KC_PROXY=edge
ENV KC_HTTP_ENABLED=true

# PostgreSQL connection configuration
ENV KC_DB_URL_HOST=ep-mute-snowflake-a5ov2o85-pooler.us-east-2.aws.neon.tech
ENV KC_DB_URL_PORT=5432
ENV KC_DB_URL_DATABASE=KeycloakDB
ENV KC_DB_URL_PARAMETERS=sslmode=require

# Expose Keycloak's default HTTP port
EXPOSE 8080

# Start Keycloak in production mode
CMD ["start", "--optimized"]
