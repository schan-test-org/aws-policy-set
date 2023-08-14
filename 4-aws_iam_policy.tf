#######################
module "aws_pols" {

  source   = "./md-aws-policy"
  for_each = var.json_pols

  json_pol_info = {
    name   = each.value.name
    policy = each.value.policy
  }

  common_tags = local.common_tags

}






