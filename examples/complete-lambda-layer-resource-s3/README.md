## Usage

```hcl
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
```