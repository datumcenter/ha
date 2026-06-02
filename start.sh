#!/bin/bash
mkdir -p /config
cat > /config/configuration.yaml <<EOF
http:
  server_port: ${PORT:-8123}
  use_x_forwarded_for: true
  trusted_proxies:
    - ::1
    - 127.0.0.1
    - 10.0.0.0/8
EOF
exec python3 -m homeassistant --config /config
