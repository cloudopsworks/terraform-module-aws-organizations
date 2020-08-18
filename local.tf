module "tags" {
  source  = "elasticguru/tags/local"
  version = "1.0.3"
  
  env = var.env
}
