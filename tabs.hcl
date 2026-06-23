resource "terminal" "terminal" {
  target = resource.container.container-1
}

resource "service" "application" {
  target = resource.container.container-1
  port   = 5000
}
