module "tags" {
  source  = "elasticguru/tags/local"
  version = "1.0.2"

  env = var.env
}
