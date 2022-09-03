variable "aws_region" {
  type        = string
  description = "The region where the lambda function will be deployed."
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "AWS Profile name."
  default     = "cloud_architect"
}


variable "lambda_func_name" {
  type        = string
  description = "The name of the lambda function."
  default     = "greet_func"
}

variable "lambda_output_path" {
  type        = string
  description = "Lambda output path"
  default     = "out.zip"
}
