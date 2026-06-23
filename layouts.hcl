

resource "layout" "single_panel" {
  column {
    width = "50"
    tab "terminal" {
      title  = "terminal"
      target = resource.terminal.terminal
    }
    tab "application" {
      title  = "application"
      target = resource.service.application
    }
  }
  column {
    width = "50"
    instructions {
      title = "Instructions"
    }
  }
}
