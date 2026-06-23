#!/bin/bash
set -euxo pipefail

echo "Checking if Flask application is running on port 5000..."

# Check 1: Is the port listening?
if ! ss -tlnp | grep -q ':5000'; then
  fail-message "Flask is not running on port 5000. Did you run 'python app.py'?"
fi

# Check 2: Does the health endpoint respond with HTTP 200?
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:5000/health)

if [ "$HTTP_STATUS" != "200" ]; then
  fail-message "The /health endpoint did not return 200 (got $HTTP_STATUS). Make sure the Flask app started correctly."
fi

# Check 3: Does the health response contain "healthy"?
RESPONSE=$(curl -s http://localhost:5000/health)

if ! echo "$RESPONSE" | grep -q "healthy"; then
  fail-message "The /health endpoint response does not contain 'healthy'. Got: $RESPONSE"
fi

echo "Flask application is running and healthy on port 5000."
