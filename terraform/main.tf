provider "google" {
  project = var.project
  region  = var.region
}
## Adding secrets for Salesforce Authentication

## Enable API

module "python_function_main" {
  source               = "./modules/functions"
  project              = var.project
  function_name        = "python-sample-wh"
  function_entry_point = "main"
  sourcefn             = "python-function-sample"
  runtimefn              = "python310"
}

module "node_function_main" {
  source               = "./modules/functions"
  project              = var.project
  function_name        = "node-sample-wh"
  function_entry_point = "hospitalityMainWH"
  sourcefn             = "node-function-sample"
  runtimefn              = "nodejs16"
}


     
module "secrets" {
  source               = "./modules/secrets"
  project              = var.project
}
