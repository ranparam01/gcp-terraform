resource "google_compute_firewall" "web" {
  name    = "${var.environment}-web"
  network = "${google_compute_network.web.name}"

  // Allow ping
  allow {
    protocol = "icmp"
  }

  // Allow incoming SSH connections
  //allow {
  //protocol = "tcp"
  // ports = ["22"]
  //}

  // Allow incoming connections to typespeed
  allow {
    protocol = "tcp"
    ports = ["1-65535"]
  }

  // Allow incoming HTTP & HTTPS traffic
  //allow {
  //  protocol = "tcp"
  //  ports = ["80", "443"]
  //}
  allow {
    protocol = "udp"
    ports = ["1-65535"]
  }
}
