resource "aws_iam_instance_profile" "ec2_profile" {
    name = var.name
    role = aws_iam_role.role.name
}

## DataSource Policy Document
data "aws_iam_policy_document" "policy-sts-assume" {
    statement {
        actions     = ["sts:AssumeRole"]
        principals  {
            type    = "${var.policy_type}"
            identifiers = ["${var.policy_identifiers}"]
        }
    }
}
resource "aws_iam_role" "role" {
    name                = "${var.name}TrustRelationsRole"
    assume_role_policy  = data.aws_iam_policy_document.policy-sts-assume.json
    description         = var.description

}


## DataSource Policy Document
data "aws_iam_policy_document" "policy_document" {
    statement {
        effect      = "${var.effect}"
        actions     = "${var.actions}"
        resources   = "${var.resources}"
    }
}
resource "aws_iam_policy" "policy_document" {

    name        = "${var.name}Policy"
    policy      = data.aws_iam_policy_document.policy_document.json
}
resource "aws_iam_role_policy_attachment" "policy-attach" {
    role       = aws_iam_role.role.name
    policy_arn = aws_iam_policy.policy_document.arn
}
