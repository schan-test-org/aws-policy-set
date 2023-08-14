#################
# BASIC-Configuration
#################
variable "project" {
  description = "project code which used to compose the resource name"
  default     = ""
}

variable "env" {
  description = "environment: dev, stg, qa, prod "
  default     = ""
}

variable "aws_region" {
  description = "aws region to build network infrastructure"
  default     = ""
}

variable "common_tags" {
  default     = {}
  description = "common tags"
}

#################
# pol
#################
variable "name" { default = "" }
variable "policy" { default = "" }

# variable "json_pol" {
#   type        = string
#   description = "JSON data in string format"
# }

variable "json_pol_info" {
  type = object({
    name   = optional(string, "")
    policy = optional(string, "")
  })
  default     = {}
  description = "JSON data info"
}


