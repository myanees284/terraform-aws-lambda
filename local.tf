locals {
  lambda_zip_location  = "outputs/${replace("${var.lambdaCodeFile}", "/.*/([^.]+).*/", "$1")}.zip"
  lambda_function_name = replace("${var.lambdaCodeFile}", "/.*/([^.]+).*/", "$1")
  lambda_invoke_urn    = aws_lambda_function.lambda.invoke_arn
  lambda_name          = aws_lambda_function.lambda.function_name
}