#define docker image artifact path
variable "docker_artifacts_repository" {
  type    = string
  default = "europe-west1-docker.pkg.dev/prj-futurae-d51c/futurae-app"
}

#helm chart deployment  futurae
resource "helm_release" "futurae-app" {
  name       = "futurae-app"
  chart      = "./helm/futurae-app"
  namespace = "futurae"
  create_namespace = true

  force_update = true
  recreate_pods = true

   set {
     name  = "image.repository"
     value = "${var.docker_artifacts_repository}/futurae"
     type  = "string"
   }

   set {
     name  = "image.tag"
     value = var.futurae-helm-version
     type  = "string"
   }
}