# Cloudformation Microservice Template

The goal of this project is to provide a single cloudformation template that will easily scale to 6 or 7 digits of users.

### Steps Completed:
* Provision certificate
* Create cloudfront distribution backed by s3

### To Do:
* Create CI pipeline
* Add in EC2/ELB/ELB Routing
* Add DB
* Add in private docker repo

## This assumes:
* You have aws-cli installed
* You have an active AWS account
* You have .aws/{config,credentials} properly set up
* You already have a domain name in a Route 53 hosted zone

## Getting Started
Note that you need the certificate created by `create-cert.sh` to be fully validated for `create-s3.sh` to work.  `create-cert.sh` will handle validation properly when the steps outlined in the [https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html](AWS CertificateManager Cloudformation Docs) are true for your account.

1. Fill in the relevant parameters in `initialize.sh`.
2. Run `./create-cert.sh`
3. Get the certificate ID by either going to the AWS console and looking under certificate manager, or from the command line: `aws acm list-certificates`
4. Enter the certificate ID in initialize.sh
5. Run `./create-s3.sh`
6. Run `./create-ecr.sh`