source initialize.sh
aws cloudformation create-stack \
    --stack-name $STACK_BASE_IDENTIFIER-ecr \
    --template-body file://ecr.yaml \
    --capabilities CAPABILITY_IAM