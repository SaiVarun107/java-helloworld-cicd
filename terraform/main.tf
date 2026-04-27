module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "java-cicd-cluster"
  cluster_version = "1.29"

  subnet_ids = []   # module creates its own VPC for simplicity
  vpc_id     = null
}