locals {
  lambda_zip_location  = "outputs/${var.lambdaCodeFile}.zip"
  lambda_function_name = replace("${var.lambdaCodeFile}", "/\\..*/", "")
  lambda_invoke_urn    = aws_lambda_function.lambda.invoke_arn
  lambda_name          = aws_lambda_function.lambda.function_name
}