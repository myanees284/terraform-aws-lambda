# Terraform AWS lambda module
This terraform module creates the lambda function in python
module "awsLambda" {
  source           = "github.com/myanees284/tf-module-lambda"
  iamRoleArn       = "ARN of lambda IAM role"
  lambdaCodeFile   = "working python code.py"
  //ARN of the source event which will trigger lambda function (Optional)
  event_source_arn = "some event src ARN"
}
~~~