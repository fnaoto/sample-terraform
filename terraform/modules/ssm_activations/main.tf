resource "aws_ssm_activation" "activation" {
  name               = var.name
  iam_role           = aws_iam_role.ssm.id
  registration_limit = "10"
}

resource "aws_iam_role" "ssm" {
  name               = var.name
  assume_role_policy = data.aws_iam_policy_document.ssm.json
}

data "aws_iam_policy_document" "ssm" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ssm.amazonaws.com"]
    }
  }
}

resource "aws_iam_role_policy_attachment" "ec2_role_for_ssm" {
  role       = aws_iam_role.ssm.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
}

