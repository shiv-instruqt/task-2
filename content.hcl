resource "page" "instructions" {
  title = "Instructions"
  file  = "instructions/__default/instructions.md"
}

resource "task" "flask_running" {
  description     = "Run the Flask application and verify it is accessible"
  success_message = "Great job! Flask is running and healthy on port 5000."

  config {
    target = resource.container.container-1
  }

  condition "app_is_running" {
    description = "Flask app must be running and responding on http://localhost:5000"

    check {
      script          = "scripts/check_flask_running.sh"
      failure_message = "Flask does not appear to be running on port 5000. Follow the instructions and run 'python app.py'."
    }
  }
}
