#No enough regional auota as this a free trial account.  
/*resource "google_container_node_pool" "guestbook-nodepool" {
  autoscaling {
    max_node_count = "3"
    min_node_count = "0"
  }

  cluster            = "${google_container_cluster.guestbook-cluster.name}"
  initial_node_count = "1"
  location           = "northamerica-northeast1"

  management {
    auto_repair  = "true"
    auto_upgrade = "true"
  }

  name              = "guestbook-nodepool"

  node_config {
    disk_size_gb    = "10"
    disk_type       = "pd-standard"
    image_type      = "COS_CONTAINERD"
    local_ssd_count = "0"
    machine_type    = "n1-standard-1"

    oauth_scopes    = ["https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/trace.append"]
    preemptible     = "false"
    service_account = "default"

    shielded_instance_config {
      enable_integrity_monitoring = "true"
      enable_secure_boot          = "false"
    }
  }

  node_locations = ["northamerica-northeast1-b", "northamerica-northeast1-c", "northamerica-northeast1-a"]
  project        = "idyllic-pottery-316421"

  upgrade_settings {
    max_surge       = "1"
    max_unavailable = "0"
  }
}
*/