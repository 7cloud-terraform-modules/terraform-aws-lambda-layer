resource "aws_lambda_layer_version" "dependencies_layer" {
  layer_name               = var.LAYER_NAME
  filename                 = var.FILENAME
  compatible_runtimes      = [var.COMPATIBLE_RUNTIMES]
  compatible_architectures = var.COMPATIBLE_ARCHITECTURES
  s3_bucket                = var.S3_BUCKET
  s3_key                   = var.S3_KEY
  s3_object_version        = var.S3_OBJECT_VERSION
  skip_destroy             = var.SKIP_DESTROY
  description              = var.DESCRIPTION
  license_info             = var.LICENSE_INFO
  source_code_hash         = var.SOURCE_CODE_HASH
}