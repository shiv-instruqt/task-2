#!/bin/bash

echo "Checking if Flask application is running on port 5000..."

# Give it a moment in case of timing
sleep 1

# Just curl the health endpoint directly - if Flask is up, this works
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" --max-time 5 http://localhost:5000/health 2>/dev/null)

if [ "$HTTP_STATUS" != "200" ]; then
  fail-message "Flask does not appear to be running on port 5000. Follow the instructions and run 'python app.py'."
fi

echo "Flask is running and healthy."
