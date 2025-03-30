FROM quay.io/keycloak/keycloak:24.0.4

# Non-sensitive settings (optional)
ENV KC_DB=postgres              # Tell Keycloak to use PostgreSQL
ENV KC_PROXY=edge               # Required for Render's HTTPS
ENV KC_HTTP_ENABLED=true        # Enable HTTP (Render handles HTTPS)

# Expose port 8080 (Keycloak's default)
EXPOSE 8080

# Start in production mode
CMD ["start", "--optimized"]
