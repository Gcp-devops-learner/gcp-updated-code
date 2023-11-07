# # Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

variable "org_id" {
  type        = string
  description = "GCP organization ID"

}

variable "billing_account" {
  type        = string
  description = "GCP Billing Account"
}

variable "team-a-dev-project-1" {
  type        = string
  description = "Folder name"
  default     = ""
}

variable "team-a-dev-project-2" {
  type        = string
  description = "Folder name"
  default     = ""
}
variable "team-a-prod-project-1" {
  type        = string
  description = "Folder name"
  default     = ""
}
variable "team-a-prod-project-2" {
  type        = string
  description = "Folder name"
  default     = ""
}


variable "team_a_folder" {
  type        = list(string)
  description = "Folder names"
  default     = []
}

variable "team_b_folder" {
  type        = list(string)
  description = "Folder names"
  default     = []
}



variable "names_team_a" {
  type        = list(string)
  description = "Folder names"
  default     = []
}


variable "names_team_b" {
  type        = list(string)
  description = "Folder names"
  default     = []
}

# /*
#  Project variables
# */

# variable "team-a-dev-project-1" {
#   type = object({
#     environment = string
#     description = string
#   })
# }

# variable "team-a-dev-project-2" {
#   type = object({
#     environment = string
#     description = string
#   })
# }

# variable "team-a-prod-project-1" {
#   type = object({
#     environment = string
#     description = string
#   })
# }

# variable "team-a-prod-project-2" {
#   type = object({
#     environment = string
#   description = string })
# }


# variable "folder_params_team_a" {
#   type = list(object({
#     environment = string
#     description = string
#   }))
# }

# variable "folder_params_team_b" {
#   type = list(object({
#     environment = string
#     description = string
#   }))
# }

/*
variable "team-b-dev-project-1" {
  type = object({
    description = string
  })
}

variable "team-b-dev-project-2" {
  type = object({
    description = string
  })
}

variable "team-b-prod-project-1" {
  type = object({
    description = string
  })
}

variable "team-b-prod-project-2" {
  type = object({
    description = string
  })
}
*/



/*======

# variable "billing_account" {
#   type        = string
#   description = "GCP Billing Account"
# }

# variable "root_level_folder_params" {
#   type = list(object({
#     environment = string
#     description = string
#   }))
# }



# variable "second_level_folder_team_a_dev" {
#   type = list(object({
#     environment = string
#     description = string
#   }))
# }

# variable "second_level_folder_team_a_prod" {
#   type = list(object({
#     environment = string
#     description = string
#   }))
# }
# variable "second_level_folder_team_b_dev" {
#   type = list(object({
#     environment = string
#     description = string
#   }))
# }

# variable "second_level_folder_team_b_prod" {
#   type = list(object({
#     environment = string
#     description = string
#   }))
# }


# /* Root project variables */

# variable "root-level-proj-params-formlabs-org" {
#   type = object({
#     environment          = string
#     description          = string
#   })
# }





# # ### Lebels Variables ###

# variable "root-formlabs-org" {
#   description = "Project Label for root"
#   type        = map(string)
# }


# variable "dev-team-a-project-1" {
#   description = "Project Labels"
#   type        = map(string)
# }

# variable "dev-team-a-project-2" {
#   description = "Project Labels"
#   type        = map(string)
# }

# variable "prod-team-a-project-1" {
#   description = "Project Labels"
#   type        = map(string)
# }

# variable "prod-team-a-project-2" {
#   description = "Project Labels"
#   type        = map(string)
# }
# variable "dev-team-b-project-1" {
#   description = "Project Labels"
#   type        = map(string)
# }
# variable "dev-team-b-project-2" {
#   description = "Project Labels"
#   type        = map(string)
# }

# variable "prod-team-b-project-1" {
#   description = "Project Labels"
#   type        = map(string)
# }


# variable "prod-team-b-project-2" {
#   description = "Project Labels"
#   type        = map(string)
# }
