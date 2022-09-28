# ###########################################################################################
# #                                     ESSENTIAL                                           #
# ###########################################################################################
output "LAYER_NAME" {
  value = var.LAYER_NAME
  description = "Unique name for your Lambda Layer"
}

output "COMPATIBLE_RUNTIMES" {
  value = var.COMPATIBLE_RUNTIMES
  description = "List of Runtimes this layer is compatible with. Up to 5 runtimes can be specified"
}

# ###########################################################################################
# #                                      OPTIONAL                                           #
# ###########################################################################################
output "FILENAME" {
  value = var.FILENAME
  description = "Path to the function's deployment package within the local filesystem. If defined, The s3_-prefixed options cannot be used"
}

output "COMPATIBLE_ARCHITECTURES" {
  value = var.COMPATIBLE_ARCHITECTURES
  description = "List of Runtimes this layer is compatible with. Up to 5 runtimes can be specified"
}

output "S3_BUCKET" {
  value = var.S3_BUCKET
  description = "S3 bucket location containing the function's deployment package. Conflicts with filename. This bucket must reside in the same AWS region where you are creating the Lambda function"
}

output "S3_KEY" {
  value = var.S3_KEY
  description = "S3 key of an object containing the function's deployment package. Conflicts with filename"
}

output "S3_OBJECT_VERSION" {
  value = var.S3_OBJECT_VERSION
  description = "Object version containing the function's deployment package. Conflicts with filename"
}

output "SKIP_DESTROY" {
  value = var.SKIP_DESTROY
  description = "Whether to retain the old version of a previously deployed Lambda Layer. Default is false. When this is not set to true, changing any of compatible_architectures, compatible_runtimes, description, filename, layer_name, license_info, s3_bucket, s3_key, s3_object_version, or source_code_hash forces deletion of the existing layer version and creation of a new layer version"
}

output "DESCRIPTION" {
  value = var.DESCRIPTION
  description = "Description of what your Lambda Layer does"
}

output "LICENSE_INFO" {
  value = var.LICENSE_INFO
  description = "License info for your Lambda Layer"
}

output "SOURCE_CODE_HASH" {
  value = var.SOURCE_CODE_HASH
  description = "Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3_key"
}

# ###########################################################################################
# #                                      RESOURCE                                           #
# ###########################################################################################
output "LAYER_ARN" {
  value = aws_lambda_layer_version.dependencies_layer.arn
  description = "Lambda Layer Resource's ARN"
}