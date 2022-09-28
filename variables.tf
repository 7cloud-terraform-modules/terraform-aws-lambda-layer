# ###########################################################################################
# #                                     ESSENTIAL                                           #
# ###########################################################################################
variable "LAYER_NAME" {
  description = "Unique name for your Lambda Layer"
  type        = string
}

variable "COMPATIBLE_RUNTIMES" {
  description = "List of Runtimes this layer is compatible with. Up to 5 runtimes can be specified"
  type        = string
}

# ###########################################################################################
# #                                      OPTIONAL                                           #
# ###########################################################################################
variable "FILENAME" {
  description = "Path to the function's deployment package within the local filesystem. If defined, The s3_-prefixed options cannot be used"
  type        = string
  default     = null
}

variable "COMPATIBLE_ARCHITECTURES" {
  description = "List of Architectures this layer is compatible with. Currently x86_64 and arm64 can be specified"
  default     = null
}

variable "S3_BUCKET" {
  description = "S3 bucket location containing the function's deployment package. Conflicts with filename. This bucket must reside in the same AWS region where you are creating the Lambda function"
  default     = null
}

variable "S3_KEY" {
  description = "S3 key of an object containing the function's deployment package. Conflicts with filename"
  default     = null
}

variable "S3_OBJECT_VERSION" {
  description = "Object version containing the function's deployment package. Conflicts with filename"
  default     = null
}

variable "SKIP_DESTROY" {
  description = "Whether to retain the old version of a previously deployed Lambda Layer. Default is false. When this is not set to true, changing any of compatible_architectures, compatible_runtimes, description, filename, layer_name, license_info, s3_bucket, s3_key, s3_object_version, or source_code_hash forces deletion of the existing layer version and creation of a new layer version"
  default     = null
}

variable "DESCRIPTION" {
  description = "Description of what your Lambda Layer does"
  default     = null
}

variable "LICENSE_INFO" {
  description = "License info for your Lambda Layer"
  default     = null
}

variable "SOURCE_CODE_HASH" {
  description = "Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3_key"
  default     = null
}