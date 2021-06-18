# Terraform AWS lambda module
This terraform module creates the lambda function in python.Single or multiple python files should be placed in separate folder(example python_files).
## Usage
~~~
module "awsLambda" {
  for_each         = fileset("./python_files/", "*.py")
  source           = "github.com/myanees284/tf-module-lambda"
  iamRoleArn       = "ARN of lambda IAM role"
  lambdaCodeFile   = "./python_files/${each.value}"
  //(Optional) ARN of the source event which will trigger lambda function
  event_source_arn = "some event src ARN"
}
~~~
