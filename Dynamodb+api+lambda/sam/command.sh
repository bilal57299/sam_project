#creating s3 bucket with the name bilal-code-sam
aws s3 mb s3://5729984-code-sam
#cloud formation package
aws cloudformation package --s3-bucket 5729984-code-sam --template-file template.yaml --output-template-file gen/template-generated.yaml
#cloud formation deploy
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name first-lambda --capabilities CAPABILITY_IAM