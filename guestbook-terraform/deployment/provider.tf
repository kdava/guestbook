data "google_client_config" "default" {}

provider "kubernetes" {
    host     = var.host
    token                  = data.google_client_config.default.access_token
    client_certificate     = base64decode(var.client_certificate)
    client_key             = base64decode(var.client_key)
    cluster_ca_certificate = base64decode(var.cluster_ca_certificate)
}
