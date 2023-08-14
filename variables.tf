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

variable "default_tags" { type = map(string) }


#################
# pol
#################

# variable "json_pol" {
#   type        = string
#   description = "JSON data in string format"
# }

variable "json_pols" {
  default     = {}
  description = "JSON pols"
}



