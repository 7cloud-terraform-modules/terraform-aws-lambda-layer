output "LAMBDA_LAYER_ARN" {
  description = "The ARN of the lambda layer"
  value       = module.simple_lambda_layer_resource.LAYER_ARN
}