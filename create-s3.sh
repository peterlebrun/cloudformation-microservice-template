source initialize.sh
aws cloudformation create-stack \
    --stack-name $STACK_BASE_IDENTIFIER-s3 \
    --template-body file://s3.yaml \
    --capabilities CAPABILITY_IAM \
    --parameters \
    ParameterKey=CertificateId,ParameterValue=$CERTIFICATE_ID \
    ParameterKey=DomainName,ParameterValue=$DOMAIN_NAME \
    ParameterKey=HostedZoneId,ParameterValue=$HOSTED_ZONE_ID