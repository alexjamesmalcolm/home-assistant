#!/bin/bash
# Modify Home Assistant's configuration to use the assigned port
sed -i "s/http:\n  server_port: 8123/http:\n  server_port: $PORT/" /config/configuration.yaml

# Start Home Assistant
exec python -m homeassistant --config /config
