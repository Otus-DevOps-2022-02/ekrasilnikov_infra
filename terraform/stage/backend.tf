terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "jdtfstatebucket"
    region     = "ru-central1"
    key        = "stage/terraform.tfstate"
    access_key = "YCAJEgYBjTwiia-UqICK3BHnm"
    secret_key = "YCM2fG4cIW4Q4lErb2hIjx-lhQJWula3W2dTpeCO"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
