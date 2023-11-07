# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

/* Root level projects */

# module "root-formlabs-org" {
#   source         = "./modules/project/"
#   project_params = var.org_id
#   org_id          = var.org_id          // provide the org id here
#   billing_account = var.billing_account // provide the billing account id here
# }



/*#############################
   Team-A Projects
*/ #############################

module "dev-team-a-project-1" {
  // source          = "./modules/project/"
  source = "terraform-google-modules/project-factory/google"
  name   = var.team-a-dev-project-1
  org_id = var.org_id // provide the org id here
  //parent          = module.first_level_folder_team_a.folders_map.fldr-dev.id //(don't change as parent id is static)
  folder_id       = module.first_level_folder_team_a.id
  billing_account = var.billing_account // provide the billing account id here
  //activate_apis   = var.activate_apis_prod
  //labels = var.dev-team-a-project-1
}

module "dev-team-a-project-2" {
  //source          = "./modules/project/"
  source = "terraform-google-modules/project-factory/google"
  org_id = var.org_id
  name   = var.team-a-dev-project-2 // provide the org id here
  //parent          = module.first_level_folder_team_a.folders_map.fldr-dev.id //(don't change as parent id is static)
  folder_id       = module.first_level_folder_team_a.id
  billing_account = var.billing_account // provide the billing account id here
  // activate_apis   = var.activate_apis_prod
  //labels = var.dev-team-a-project-2
}

module "prod-team-a-project-1" {
  //source          = "./modules/project/"
  source = "terraform-google-modules/project-factory/google"
  name   = var.team-a-prod-project-1
  org_id = var.org_id // provide the org id here
  //parent          = module.first_level_folder_team_a.folders_map.fldr-prod.id //(don't change as parent id is static)
  folder_id       = module.first_level_folder_team_a.id
  billing_account = var.billing_account // provide the billing account id here
  // activate_apis   = var.activate_apis_prod
  //labels = var.prod-team-a-project-1
}

module "prod-team-a-project-2" {
  //source          = "./modules/project/"
  source = "terraform-google-modules/project-factory/google"
  name   = var.team-a-prod-project-2
  org_id = var.org_id // provide the org id here
  //parent          = module.first_level_folder_team_a.folders_map.fldr-prod.id //(don't change as parent id is static)
  folder_id       = module.first_level_folder_team_a.id
  billing_account = var.billing_account // provide the billing account id here
  // activate_apis   = var.activate_apis_prod
  //labels = var.prod-team-a-project-2
}

/*#############################
   Team-B Projects
*/ #############################

/*
module "dev-team-b-project-1" {
  source          = "./modules/project/"
  project_params  = var.team-b-dev-project-1
  org_id          = var.org_id                                               // provide the org id here
  parent      = module.first_level_folder_team_b.folders_map.fldr-dev.id //(don't change as parent id is static)
  billing_account = var.billing_account                                      // provide the billing account id here
  // activate_apis   = var.activate_apis_prod
  //labels = var.dev-team-b-project-1
}

module "dev-team-b-project-2" {
  source          = "./modules/project/"
  project_params  = var.team-b-dev-project-2
  org_id          = var.org_id                                               // provide the org id here
  parent      = module.first_level_folder_team_b.folders_map.fldr-dev.id //(don't change as parent id is static)
  billing_account = var.billing_account                                      // provide the billing account id here
  //activate_apis   = var.activate_apis_prod
  //labels          = var.dev-team-b-project-2
}

module "prod-team-b-project-1" {
  source          = "./modules/project/"
  project_params  = var.team-b-prod-project-1
  org_id          = var.org_id                                                // provide the org id here
  parent      = module.first_level_folder_team_b.folders_map.fldr-prod.id //(don't change as parent id is static)
  billing_account = var.billing_account                                       // provide the billing account id here
  //activate_apis   = var.activate_apis_prod
  //labels = var.prod-team-b-project-1
}

module "prod-team-b-project-2" {
  source          = "./modules/project/"
  project_params  = var.team-b-prod-project-2
  org_id          = var.org_id                                                // provide the org id here
  parent      = module.first_level_folder_team_b.folders_map.fldr-prod.id //(don't change as parent id is static)
  billing_account = var.billing_account                                       // provide the billing account id here
  // activate_apis   = var.activate_apis_prod
  //labels = var.prod-team-b-project-2
}

*/