#!/bin/bash
set -e

echo "Stopping application services..."

# Stop Apache if running
if systemctl is-active --quiet httpd; then
  echo "Stopping Apache (httpd)..."
  sudo systemctl stop httpd.service || true
else
  echo "Apache is not running."
fi

# Stop Tomcat if running
if systemctl is-active --quiet tomcat; then
  echo "Stopping Tomcat..."
  sudo systemctl stop tomcat.service || true
else
  echo "Tomcat is not running."
fi

echo "All stop operations completed successfully."
exit 0

