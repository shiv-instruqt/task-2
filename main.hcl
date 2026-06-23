resource "lab" "main" {
  title       = "task2-shiv"
  description = "# Lab Overview\n\nIn this lab, you will deploy and run a Flask web application directly using Python.\n\n## Tasks You Will Perform\n\n- Update the package repository\n- Install Python 3, pip, Nano, and Python virtual environment tools\n- Create and activate a Python virtual environment\n- Install the Flask framework\n- Create a Flask application from source code\n- Run the Flask application on port 5000\n- Verify application availability using curl\n- Access the application through the browser\n\n---\n\n## Application Overview\n\nThe application includes:\n\n- A Flask web server\n- A Year Converter web interface\n- Server private and public IP address discovery\n- REST API endpoints\n- Health check endpoint\n- Browser-accessible web application running on port **5000**\n\n---\n\n## Available Endpoints\n\n| Endpoint | Description |\n|-----------|-------------|\n| `/` | Year Converter Web Application |\n| `/api/server-info` | Returns server IP information |\n| `/health` | Application health check |\n\n---\n\n## Learning Objectives\n\nBy completing this lab, you will learn how to:\n\n- Create and use Python virtual environments\n- Install Python packages using pip\n- Build and run a Flask application\n- Expose a web application on port 5000\n- Test REST API endpoints\n- Verify application health and availability\n\n---\n\n### Prerequisites\n\n- Basic Linux command-line knowledge\n- Familiarity with Python fundamentals\n- Access to the provided lab environment\n\nWhen you are ready, move to the **Terminal** tab and begin with **Step 1**."

  layout = resource.layout.single_panel

  settings {
    theme = "modern-dark"

    timelimit {
      duration   = "15m"
      show_timer = true
    }

    idle {
      enabled      = true
      timeout      = "5m"
      show_warning = true
    }

    controls {
      show_stop = true
    }
  }

  content {
    activities {
      task "flask_running" {
        reference = resource.task.flask_running
      }
    }

    chapter "__default" {
      title = "Default"
      page "instructions" {
        title     = "Instructions"
        reference = resource.page.instructions
      }
    }
  }
}
