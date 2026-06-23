resource "container" "container-1" {
  image {
    name = "ubuntu:22.04"
  }
  port {
    local    = "80"
    protocol = "tcp"
  }
  port {
    local    = "5000"
    protocol = "tcp"
  }
  privileged = false
  resources {
    cpu    = 1000
    memory = 256
  }
  run_as {
    user  = "root"
    group = "root"
  }
}
