# Use the official Keycloak image from quay.io
FROM quay.io/keycloak/keycloak:24.0.4

# Expose the default Keycloak port
EXPOSE 8080

# Use the development mode start command
# If Railway assigns a dynamic port via the PORT variable, you can adjust accordingly:
# CMD ["start-dev", "--http-port=${PORT}"]
CMD ["start-dev", "--http-port=${PORT}", "-J-Xms256m", "-J-Xmx256m"]

