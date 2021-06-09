# Terraform AWS lambda module
This terraform module creates the lambda function in python.Single or multiple python files should be placed in main folder.
## Usage
~~~
module "awsLambda" {
  for_each         = fileset("./", "*.py")
  source           = "github.com/myanees284/tf-module-lambda"
  iamRoleArn       = "ARN of lambda IAM role"
  lambdaCodeFile   = each.value
  //ARN of the source event which will trigger lambda function (Optional)
  event_source_arn = "some event src ARN"
}
~~~