# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

# module "root_level_folder" {
#   source = "./modules/folder/"
#   parent = var.org_id /*provide the parent id here*/
# }


module "first_level_folder_team_a" {
  //source = "./modules/folder/"
  source = "terraform-google-modules/folders/google"
  names  = var.team_a_folder
  parent = var.org_id /*(don't change as parent folder_paramsis static)*/
  // parent = module.root_level_folder.folders_map.fldr-org_id.id


}

module "first_level_folder_team_b" {
  //source = "./modules/folder/"
  source = "terraform-google-modules/folders/google"
  names  = var.team_b_folder
  parent = var.org_id
  //parent         = module.root_level_folder.folders_map.fldr-org_id.id
}

module "folder_params_team_a" {
  //source = "./modules/folder/"
  source = "terraform-google-modules/folders/google"
  names  = var.names_team_a
  parent = module.first_level_folder_team_a.id //(don't change as parent folder_paramsis static)/

}
module "folder_params_team_b" {
  //source = "./modules/folder/"
  source = "terraform-google-modules/folders/google"
  names  = var.names_team_b
  parent = module.first_level_folder_team_b.id //(don't change as parent folder_paramsis static)/

}


# module "project" {
#   source            = "terraform-google-modules/project-factory/google"
#   version           = "< 5.0.0"
#   name             = "development"
#   random_project_id = false
#   org_id            = var.org_id
#   folder_id         = module.folder_params_team_a.id
#   billing_account   = var.billing_account
# }


# module "team_b_dev" {
#   #   source = "../modules/folder/"
#   source = "terraform-google-modules/folders/google"
#   folder_params  = var.team_b_dev
#   parent = module.first_level_folder_team_b.id //(don't change as parent folder_paramsis static)/

# }
# module "team_b_prod" {
#   #   source = "../modules/folder/"
#   source = "terraform-google-modules/folders/google"
#   folder_params  = var.team_b_prod
#   parent = module.first_level_folder_team_b.id //(don't change as parent folder_paramsis static)/

# }

