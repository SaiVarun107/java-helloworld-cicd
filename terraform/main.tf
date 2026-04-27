module "eks" {
  source  = "terraform-aws-mod  cluster_name    = "java-cicd-cluster"  source  = "terraform-aws-modules/eks/aws"
  cluster_version = "1.29"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnets

  eks_managed_node_groups = {
    default = {
      min_size     = 1
      max_size     = 2
      desired_size = 1
      instance_types = ["t3.medium"]
    }
  }
}
``
  version = "20.8.3"

