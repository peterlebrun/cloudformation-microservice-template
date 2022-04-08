source initialize.sh
aws cloudformation create-stack \
    --stack-name $STACK_BASE_IDENTIFIER-s3 \
    --template-body file://s3.yaml \
    --parameters \
    ParameterKey=DomainName,ParameterValue=$DOMAIN_NAME \
    ParameterKey=HostedZoneId,ParameterValue=$HOSTED_ZONE_ID \
    ParameterKey=CertificateId,ParameterValue=$CERTIFICATE_ID