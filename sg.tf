module "mysql_sg" {
    source = "../terraform-aws-securitygroup"
    project_name = "expense"
    environment = "dev"
    sg_name = "mysql"
    vpc_id = module.vpc.vpc_id
    common_tags = var.common_tags
    sg_tags = var.mysql_sg_tags
}