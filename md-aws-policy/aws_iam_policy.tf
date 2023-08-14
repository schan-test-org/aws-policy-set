
resource "aws_iam_policy" "my_policy" {
  name   = var.json_pol_info.name
  policy = var.json_pol_info.policy

  # policy = jsondecode(var.json_pol)
  # policy = jsonencode({
  #   Version = "2012-10-17"
  #   Statement = [
  #     {
  #       Action = [
  #         "ec2:Describe*",
  #       ]
  #       Effect   = "Allow"
  #       Resource = "*"
  #     },
  #   ]
  # })

  tags = var.common_tags

}



