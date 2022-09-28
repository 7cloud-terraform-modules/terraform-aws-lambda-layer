# Lambda Layer Module by 7Clouds
Thank you for riding with us! Feel free to download or reference this respository in your terraform projects and studies  

This module is a part of our product SCA - An automated __API__ and __Serverless Infrastructure__ generator that can reduce your API development time by 40-60% and automate your deployments up to 90%! Check it out at https://seventechnologies.cloud/

Please rank this repo 5 starts if you like our job!

## Usage

```hcl
module "complete_lambda_layer_resource_file_path" {
  source = "../.."

  LAYER_NAME = "test"
  COMPATIBLE_RUNTIMES = ["python3.8"]
  FILENAME = "path-to-layer eg.: ../.., ftp, filepath, etc"
  COMPATIBLE_ARCHITECTURES = "arm64"
  SKIP_DESTROY = false
  DESCRIPTION = "Example"
  LICENSE_INFO = "MIT"
  SOURCE_CODE_HASH = "${base64sha256(file("path-to-layer.zip eg.: ../.., ftp, filepath, etc"))}"
}

module "complete_lambda_layer_resource_s3" {
  source = "../.."

  LAYER_NAME = "test"
  COMPATIBLE_RUNTIMES = ["python3.8"]
  COMPATIBLE_ARCHITECTURES = "arm64"
  S3_BUCKET = "insert_your_bucket_arn"
  S3_KEY = "your_lambda.zip"
  S3_OBJECT_VERSION = 1
  SKIP_DESTROY = false
  DESCRIPTION = "Example"
  LICENSE_INFO = "MIT"
  SOURCE_CODE_HASH = "${base64sha256("your_lambda.zip")}"
}

module "simple_lambda_layer_resource" {
  source = "../.."

  LAYER_NAME = "test"
  COMPATIBLE_RUNTIMES = ["python3.8"]
}
```
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules
| Name | Source | Version |
|------|--------|---------|
| <a name="lambda-layer"></a> [lambda-layer](https://github.com/7clouds-terraform-modules/terraform-aws-lambda-layer) | Github | 0.1.0 |

## Resources

| Name | Type |
|------|------|
| [aws_lambda_layer_version.dependencies_layer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_layer_version) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_COMPATIBLE_ARCHITECTURES"></a> [COMPATIBLE\_ARCHITECTURES](#input\_COMPATIBLE\_ARCHITECTURES) | List of Architectures this layer is compatible with. Currently x86\_64 and arm64 can be specified | `any` | `null` | no |
| <a name="input_COMPATIBLE_RUNTIMES"></a> [COMPATIBLE\_RUNTIMES](#input\_COMPATIBLE\_RUNTIMES) | List of Runtimes this layer is compatible with. Up to 5 runtimes can be specified | `string` | n/a | yes |
| <a name="input_DESCRIPTION"></a> [DESCRIPTION](#input\_DESCRIPTION) | Description of what your Lambda Layer does | `any` | `null` | no |
| <a name="input_FILENAME"></a> [FILENAME](#input\_FILENAME) | Path to the function's deployment package within the local filesystem. If defined, The s3\_-prefixed options cannot be used | `string` | `null` | no |
| <a name="input_LAYER_NAME"></a> [LAYER\_NAME](#input\_LAYER\_NAME) | Unique name for your Lambda Layer | `string` | n/a | yes |
| <a name="input_LICENSE_INFO"></a> [LICENSE\_INFO](#input\_LICENSE\_INFO) | License info for your Lambda Layer | `any` | `null` | no |
| <a name="input_S3_BUCKET"></a> [S3\_BUCKET](#input\_S3\_BUCKET) | S3 bucket location containing the function's deployment package. Conflicts with filename. This bucket must reside in the same AWS region where you are creating the Lambda function | `any` | `null` | no |
| <a name="input_S3_KEY"></a> [S3\_KEY](#input\_S3\_KEY) | S3 key of an object containing the function's deployment package. Conflicts with filename | `any` | `null` | no |
| <a name="input_S3_OBJECT_VERSION"></a> [S3\_OBJECT\_VERSION](#input\_S3\_OBJECT\_VERSION) | Object version containing the function's deployment package. Conflicts with filename | `any` | `null` | no |
| <a name="input_SKIP_DESTROY"></a> [SKIP\_DESTROY](#input\_SKIP\_DESTROY) | Whether to retain the old version of a previously deployed Lambda Layer. Default is false. When this is not set to true, changing any of compatible\_architectures, compatible\_runtimes, description, filename, layer\_name, license\_info, s3\_bucket, s3\_key, s3\_object\_version, or source\_code\_hash forces deletion of the existing layer version and creation of a new layer version | `any` | `null` | no |
| <a name="input_SOURCE_CODE_HASH"></a> [SOURCE\_CODE\_HASH](#input\_SOURCE\_CODE\_HASH) | Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3\_key | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_COMPATIBLE_ARCHITECTURES"></a> [COMPATIBLE\_ARCHITECTURES](#output\_COMPATIBLE\_ARCHITECTURES) | List of Runtimes this layer is compatible with. Up to 5 runtimes can be specified |
| <a name="output_COMPATIBLE_RUNTIMES"></a> [COMPATIBLE\_RUNTIMES](#output\_COMPATIBLE\_RUNTIMES) | List of Runtimes this layer is compatible with. Up to 5 runtimes can be specified |
| <a name="output_DESCRIPTION"></a> [DESCRIPTION](#output\_DESCRIPTION) | Description of what your Lambda Layer does |
| <a name="output_FILENAME"></a> [FILENAME](#output\_FILENAME) | Path to the function's deployment package within the local filesystem. If defined, The s3\_-prefixed options cannot be used |
| <a name="output_LAYER_ARN"></a> [LAYER\_ARN](#output\_LAYER\_ARN) | Lambda Layer Resource's ARN |
| <a name="output_LAYER_NAME"></a> [LAYER\_NAME](#output\_LAYER\_NAME) | Unique name for your Lambda Layer |
| <a name="output_LICENSE_INFO"></a> [LICENSE\_INFO](#output\_LICENSE\_INFO) | License info for your Lambda Layer |
| <a name="output_S3_BUCKET"></a> [S3\_BUCKET](#output\_S3\_BUCKET) | S3 bucket location containing the function's deployment package. Conflicts with filename. This bucket must reside in the same AWS region where you are creating the Lambda function |
| <a name="output_S3_KEY"></a> [S3\_KEY](#output\_S3\_KEY) | S3 key of an object containing the function's deployment package. Conflicts with filename |
| <a name="output_S3_OBJECT_VERSION"></a> [S3\_OBJECT\_VERSION](#output\_S3\_OBJECT\_VERSION) | Object version containing the function's deployment package. Conflicts with filename |
| <a name="output_SKIP_DESTROY"></a> [SKIP\_DESTROY](#output\_SKIP\_DESTROY) | Whether to retain the old version of a previously deployed Lambda Layer. Default is false. When this is not set to true, changing any of compatible\_architectures, compatible\_runtimes, description, filename, layer\_name, license\_info, s3\_bucket, s3\_key, s3\_object\_version, or source\_code\_hash forces deletion of the existing layer version and creation of a new layer version |
| <a name="output_SOURCE_CODE_HASH"></a> [SOURCE\_CODE\_HASH](#output\_SOURCE\_CODE\_HASH) | Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3\_key |
<!-- END_TF_DOCS -->