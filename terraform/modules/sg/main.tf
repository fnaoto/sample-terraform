resource "aws_security_group" "sg" {
  name   = "${var.name}"
  vpc_id = "${var.vpc_id}"
  tags   = "${var.tags}"
}

# rules for cidr block

resource "aws_security_group_rule" "egress_cidr_blocks" {
  count             = "${length(var.egress_cidr_blocks) >= 1 ? 1 : 0}"
  type              = "egress"
  to_port           = "${var.egress_port}"
  from_port         = "${var.egress_port}"
  protocol          = "${var.egress_protocol}"
  cidr_blocks       = "${var.egress_cidr_blocks}"
  security_group_id = "${aws_security_group.sg.id}"
}

resource "aws_security_group_rule" "ingress_cidr_blocks" {
  count             = "${length(var.ingress_cidr_blocks) >= 1 ? 1 : 0}"
  type              = "ingress"
  to_port           = "${var.ingress_port}"
  from_port         = "${var.ingress_port}"
  protocol          = "${var.ingress_protocol}"
  cidr_blocks       = "${var.ingress_cidr_blocks}"
  security_group_id = "${aws_security_group.sg.id}"
}

# rules for security group

resource "aws_security_group_rule" "egress_source_sg_id" {
  count                    = "${length(var.egress_source_sg_id) >= 1 ? 1 : 0}"
  type                     = "egress"
  to_port                  = "${var.egress_port}"
  from_port                = "${var.egress_port}"
  protocol                 = "${var.egress_protocol}"
  source_security_group_id = "${var.egress_source_sg_id}"
  security_group_id        = "${aws_security_group.sg.id}"
}

resource "aws_security_group_rule" "ingress_source_sg_id" {
  count                    = "${length(var.ingress_source_sg_id) >= 1 ? 1 : 0}"
  type                     = "ingress"
  to_port                  = "${var.ingress_port}"
  from_port                = "${var.ingress_port}"
  protocol                 = "${var.ingress_protocol}"
  source_security_group_id = "${var.ingress_source_sg_id}"
  security_group_id        = "${aws_security_group.sg.id}"
}
