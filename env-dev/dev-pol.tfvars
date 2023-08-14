###############################################################################
# Common Variables
###############################################################################
project    = "testmz-irsa"
aws_region = "ap-northeast-2"

default_tags = {
  dept  = "Platform Service Architect Group / DevOps SWAT Team"
  email = "schan@mz.co.kr"
}

env = "dev"

###############################################################################
# json_pols
###############################################################################

json_pols = {
  pol_1 = {
    name   = "tpol-1"
    policy = <<EOT
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "ec2:*",
                "autoscaling:*",
                "eks:*",
                "ecr:*",
                "sts:*",
                "ssm:*",
                "iam:GetRole",
                "iam:PassRole",
                "iam:ListRolePolicies",
                "iam:CreatePolicy",
                "iam:DeletePolicy",
                "iam:GetPolicy",
                "iam:GetPolicyVersion",
                "iam:ListPolicyVersions",
                "iam:AttachRolePolicy",
                "iam:DetachRolePolicy",
                "iam:GetInstanceProfile",
                "iam:CreateInstanceProfile",
                "iam:DeleteInstanceProfile",
                "iam:RemoveRoleFromInstanceProfile",
                "iam:AddRoleToInstanceProfile",
                "iam:ListAttachedRolePolicies",
                "iam:CreateRole",
                "iam:DeleteRole",
                "iam:ListInstanceProfilesForRole",
                "iam:CreateOpenIDConnectProvider",
                "iam:DeleteOpenIDConnectProvider",
                "iam:GetOpenIDConnectProvider",
                "iam:TagRole",
                "iam:TagInstanceProfile",
                "iam:TagOpenIDConnectProvider",
                "iam:TagPolicy",
                "acm-pca:*",
                "elasticloadbalancing:*",
                "cloudformation:*",
                "access-analyzer:*",
                "iam:CreatePolicyVersion",
                "iam:UpdateAssumeRolePolicy"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "NotAction": [
                "dynamodb:delete*",
                "kms:delete*",
                "route53:delete*",
                "acm:delete*"
            ],
            "Resource": "*"
        }
    ]
}
EOT

  }

  pol_2 = {
    name   = "tpol_2",
    policy = <<EOT
{
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Deny",
        "Action": "*",
        "Resource": "*",
        "Condition": {
            "NotIpAddress": {
                "aws:SourceIp": [
                    "121.134.158.33/32",
                    "121.134.158.34/32",
                    "211.245.120.66/32",
                    "211.60.50.190/32",
                    "121.165.105.168/32",
                    "175.113.164.78/32",
                    "211.60.50.130/32",
                    "221.148.114.47/32",
                    "118.219.188.200/32",
                    "221.148.35.240/32"
                ]
            },
            "Bool": {
                "aws:ViaAWSService": "false"
            }
        }
    }

    ]
}
EOT

  }

}


