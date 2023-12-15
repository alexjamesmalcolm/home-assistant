# docker run -d \
#   --name homeassistant \
#   --privileged \
#   --restart=unless-stopped \
#   -e TZ=MY_TIME_ZONE \
#   -v /PATH_TO_YOUR_CONFIG:/config \
#   -v /run/dbus:/run/dbus:ro \
#   --network=host \
#   ghcr.io/home-assistant/home-assistant:stable

FROM ghcr.io/home-assistant/home-assistant:stable

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Set the script as the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
