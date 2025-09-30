#!/bin/bash
set -e

if pgrep httpd > /dev/null; then
  echo "Stopping Apache (httpd)..."
  systemctl stop httpd.service
fi

if pgrep tomcat > /dev/null; then
  echo "Stopping Tomcat..."
  systemctl stop tomcat.service
fi
