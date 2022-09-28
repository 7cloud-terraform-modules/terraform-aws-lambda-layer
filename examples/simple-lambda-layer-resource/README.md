# Simple Lambda Layer Resource Example
To create a Lambda Layer Resource only with required fields

## Usage

```hcl
module "simple_lambda_layer_resource" {
  source = "../.."

  LAYER_NAME = "test"
  COMPATIBLE_RUNTIMES = ["python3.8"]
}
```