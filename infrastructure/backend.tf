terraform {
  backend "oci" {
    bucket              = "roman-terraform-state"
    namespace           = "frwuyndos2ry"
    key                 = "infrastructure/terraform.tfstate"
    region              = "eu-frankfurt-1"
    config_file_profile = "DEFAULT"
  }
}
