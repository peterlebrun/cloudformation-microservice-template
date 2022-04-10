source initialize.sh
aws cloudformation create-stack \
    --stack-name $STACK_BASE_IDENTIFIER-ec2 \
    --template-body file://ec2.yaml \
    --parameters \
    ParameterKey=AvailabilityZone,ParameterValue=$AVAILABILITY_ZONE \
    ParameterKey=CertificateId,ParameterValue=$CERTIFICATE_ID \
    ParameterKey=DomainName,ParameterValue=$DOMAIN_NAME \
    ParameterKey=HostedZoneId,ParameterValue=$HOSTED_ZONE_ID \
    ParameterKey=KeyPairName,ParameterValue=$KEY_PAIR_NAME \
    ParameterKey=SubnetOne,ParameterValue=$SUBNET_ONE \
    ParameterKey=SubnetTwo,ParameterValue=$SUBNET_TWO \
    ParameterKey=VPCID,ParameterValue=$VPC_ID