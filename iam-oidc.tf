# IAM OIDC provider
#for cluster Lionsbot-ap

data "tls_certificate" "eks" {
  url = aws_eks_cluster.Lionsbot-ap.identity[0].oidc[0].issuer
}

resource "aws_iam_openid_connect_provider" "eks" {
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = [data.tls_certificate.eks.certificates[0].sha1_fingerprint]
  url             = aws_eks_cluster.Lionsbot-ap.identity[0].oidc[0].issuer
}

#for cluster Lionsbot-eu

data "tls_certificate" "eks" {
  url = aws_eks_cluster.Lionsbot-eu.identity[0].oidc[0].issuer
}

resource "aws_iam_openid_connect_provider" "eks" {
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = [data.tls_certificate.eks.certificates[0].sha1_fingerprint]
  url             = aws_eks_cluster.Lionsbot-eu.identity[0].oidc[0].issuer
}