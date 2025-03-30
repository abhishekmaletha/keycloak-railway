FROM quay.io/keycloak/keycloak:24.0.4
# Install PostgreSQL driver
RUN /opt/keycloak/bin/kc.sh build --db=postgres
# Non-sensitive settings (optional)
ENV KC_DB=postgres             
ENV KC_PROXY=edge              
ENV KC_HTTP_ENABLED=true        

ENV KC_DB_URL_PROPERTIES=?sslmode=require
# Expose port 8080 (Keycloak's default)
EXPOSE 8080

# Start in production mode
CMD ["start", "--optimized"]
