#EKS Cluster for Asia Region

resource "aws_iam_role" "eks-cluster-role" {
  name = "eks-cluster-role"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "eks-cluster-policy-AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.eks-cluster-role.name
}

resource "aws_eks_cluster" "Lionsbot-ap" {
  name     = "Lionsbot-ap"
  role_arn = aws_iam_role.eks-cluster-role.arn

  vpc_config {
    subnet_ids = [
      aws_subnet.private-asia-1a.id,
      aws_subnet.private-asia-1b.id,
      aws_subnet.public-asia-1a.id,
      aws_subnet.public-asia-1b.id
    ]
  }

  depends_on = [aws_iam_role_policy_attachment.eks-cluster-policy-AmazonEKSClusterPolicy]
}

#EKS Cluster for Europe

resource "aws_iam_role" "eks-cluster-role" {
  name = "eks-cluster-role"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "eks-cluster-policy-AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.eks-cluster-role.name
}

resource "aws_eks_cluster" "Lionsbot-ap" {
  name     = "Lionsbot-eu"
  role_arn = aws_iam_role.eks-cluster-role.arn

  vpc_config {
    subnet_ids = [
      aws_subnet.private-europe-1a.id,
      aws_subnet.private-europe-1b.id,
      aws_subnet.public-europe-1a.id,
      aws_subnet.public-europe-1b.id
    ]
  }

  depends_on = [aws_iam_role_policy_attachment.eks-cluster-policy-AmazonEKSClusterPolicy]
}