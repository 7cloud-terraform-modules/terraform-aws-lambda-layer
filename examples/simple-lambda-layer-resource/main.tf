module "simple_lambda_layer_resource" {
  source = "../.."

  LAYER_NAME = "test"
  COMPATIBLE_RUNTIMES = ["python3.8"]
}