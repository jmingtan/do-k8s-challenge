resource "digitalocean_kubernetes_cluster" "main" {
  name    = "kubeflow-cluster"
  region  = "sgp1"
  version = "1.21.5-do.0"

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-4gb"
    node_count = 3
  }
}