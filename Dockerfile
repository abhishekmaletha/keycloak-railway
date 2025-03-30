FROM quay.io/keycloak/keycloak:24.0.4
# Install PostgreSQL driver and build Keycloak with PostgreSQL support
RUN /opt/keycloak/bin/kc.sh build --db=postgres

# Non-sensitive settings (optional)
ENV KC_DB=postgres             
ENV KC_PROXY=edge              
ENV KC_HTTP_ENABLED=true

# Non-confidential PostgreSQL connection parameters
ENV KC_DB_URL_HOST=ep-mute-snowflake-a5ov2o85-pooler.us-east-2.aws.neon.tech
ENV KC_DB_URL_PORT=5432
ENV KC_DB_URL_DATABASE=keycloakdb
ENV KC_DB_URL_PARAMETERS=sslmode=require

# Expose port 8080 (Keycloak's default)
EXPOSE 8080

# Start in production mode
CMD ["start", "--optimized"]
