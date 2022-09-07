provider "google" {
  project = var.project
  region  = var.region
}
## Adding secrets for Salesforce Authentication

## Enable API


module "node_function" {
  source               = "./modules/functions"
  project              = var.project
  function_name        = "node-sample-wh"
  function_entry_point = "main"
  sourcefn               = "node-function-sample"
  runtime              = "nodejs16"
}

module "python_function_main" {
  source               = "./modules/functions"
  project              = var.project
  function_name        = "python-sample-wh"
  function_entry_point = "main"
  sourcefn               = "python-function-sample"
  runtime              = "python310"
}
     
module "secrets" {
  source               = "./modules/secrets"
  project              = var.project
}
