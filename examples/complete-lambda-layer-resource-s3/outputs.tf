output "LAMBDA_LAYER_ARN" {
  description = "The ARN of the lambda layer"
  value       = module.complete_lambda_layer_resource_s3.LAYER_ARN
}