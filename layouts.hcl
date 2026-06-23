
resource "layout" "single_panel" {
  column {
    width = "50"
    tab "application" {
      title  = "application"
      target = resource.service.application
    }
    tab "terminal" {
      title  = "terminal"
      target = resource.terminal.terminal
    }
  }
  column {
    width = "50"
    instructions {
      title = "Instructions"
    }
  }
}
