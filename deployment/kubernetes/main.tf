provider "kubernetes" {
  host                   = module.eks_al2023.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks_al2023.cluster_certificate_authority_data)
  token                  = data.aws_eks_cluster_auth.main.token
}

data "aws_eks_cluster_auth" "main" {
  name = module.eks_al2023.cluster_name
}

resource "kubernetes_deployment" "api" {
  metadata {
    name      = "api-deployment"
    namespace = "default"
    labels = {
      app = "api"
    }
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        app = "api"
      }
    }

    template {
      metadata {
        labels = {
          app = "api"
        }
      }

      spec {
        container {
          name  = "api-container"
          image = "${var.ecr_registry}/${var.ecr_repository_api}:${var.image_tag}"
          port {
            container_port = 8000
          }
        }
      }
    }
  }

  depends_on = [
    module.eks_al2023
  ]
}

resource "kubernetes_service" "api" {
  metadata {
    name      = "api-service"
    namespace = "default"
    labels = {
      app = "api"
    }
  }

  spec {
    selector = {
      app = kubernetes_deployment.api.spec[0].template[0].metadata[0].labels["app"]
    }

    port {
      port        = 80
      target_port = 8000
    }

    type = "LoadBalancer"
  }

  depends_on = [
    kubernetes_deployment.api
  ]
}

resource "kubernetes_deployment" "frontend" {
  metadata {
    name      = "frontend-deployment"
    namespace = "default"
    labels = {
      app = "frontend"
    }
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        app = "frontend"
      }
    }

    template {
      metadata {
        labels = {
          app = "frontend"
        }
      }

      spec {
        container {
          name  = "frontend-container"
          image = "${var.ecr_registry}/${var.ecr_repository_frontend}:${var.image_tag}"
          port {
            container_port = 3000
          }
        }
      }
    }
  }

  depends_on = [
    module.eks_al2023
  ]
}

resource "kubernetes_service" "frontend" {
  metadata {
    name      = "frontend-service"
    namespace = "default"
    labels = {
      app = "frontend"
    }
  }

  spec {
    selector = {
      app = kubernetes_deployment.frontend.spec[0].template[0].metadata[0].labels["app"]
    }

    port {
      port        = 80
      target_port = 3000
    }

    type = "LoadBalancer"
  }

  depends_on = [
    kubernetes_deployment.frontend
  ]
}
