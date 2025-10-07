# Este archivo es generado automáticamente por el script 01-setup-backend.sh
# NO MODIFICAR MANUALMENTE

terraform {
  backend "s3" {
    bucket  = "tf-enterprise-foundation-tfstate-1759847659"
    key     = "dev/terraform.tfstate"
    region  = "us-east-1"
    # La línea 'dynamodb_table' se elimina ya que S3 ahora lo maneja automáticamente
    encrypt = true
  }
}
