FROM quay.io/keycloak/keycloak:24.0.4

# Non-sensitive settings (optional)
ENV KC_DB=postgres             
ENV KC_PROXY=edge              
ENV KC_HTTP_ENABLED=true        

# Expose port 8080 (Keycloak's default)
EXPOSE 8080

# Start in production mode
CMD ["start", "--optimized"]
