#!/bin/bash
mkdir -p /config
cat > /config/configuration.yaml <<EOF
http:
  server_port: ${PORT:-8123}
EOF
exec python3 -m homeassistant --config /config
