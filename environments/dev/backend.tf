# Este archivo es generado automáticamente por el script 01-setup-backend.sh
# NO MODIFICAR MANUALMENTE

terraform {
  backend "s3" {
    bucket         = "tf-enterprise-foundation-tfstate-1759784940"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-enterprise-foundation-tf-locks"
    encrypt        = true
  }
}
