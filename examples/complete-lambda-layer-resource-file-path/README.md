# Complete Lambda Layer Resource File Path Example
To create a Lambda Layer Resource from a code in a local zip file

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
```