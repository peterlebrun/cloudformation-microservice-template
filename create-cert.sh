source initialize.sh
aws cloudformation create-stack \
    --stack-name $STACK_BASE_IDENTIFIER-cert \
    --template-body file://cert.yaml \
    --parameters \
    ParameterKey=DomainName,ParameterValue=$DOMAIN_NAME \
    ParameterKey=HostedZoneId,ParameterValue=$HOSTED_ZONE_ID