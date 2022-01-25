# DataStax Astra through Terraform
This guide aims to simplify the creation of an Astra database using Terraform while using an AWS Private Link setup.

## Run terraform to create the Astra database
This Terraform script wil set up:
- An Astra database
- A Service Account on the database
- A Private Link resource

Make sure to check the variables in `astra-database/variables.tf` before running Terraform and modify accordingly. These are the variables required:
- Database name
- Initial keyspace
- Cloud provider and region
- The allowed AWS Principal for configuring the Private Link Endpoint

Before running Terraform, set your Application Token from the Astra DB Dashoard:
```sh
export ASTRA_API_TOKEN=<your-token>
```

To run Terraform in order to create the database:
```sh
cd astra-database
terraform init
teraform plan
terraform apply
```

Upon succesful completion, Terraform will output the following variables for your convenience:
- Astra Database ID
- Astra Organization ID
- Secure Connect Bundle URL so it can be downloaded
- Service Account (Client ID, Client Secret and Token)
- Private Service Name

# Link your Astra DB to AWS using Private Link
In this step, you'll set up the Private Endpoint on AWS and link it to Astra.

For reference, have a look at the awesome video: https://www.youtube.com/watch?v=xJfmgO8TGek

## Set up the endpoint
1. Create a new endpoint
2. Search for the private service name (take this from the output from Terraform above)
3. Make sure to select the correct VPC ID for the service that needs access to Astra
4. Select the security group that is configured for port numbers 29000-32000

Upon succesful creation, you'll be provided with the Endpoint ID. At this point in time the endpoint is pending acceptance. This means the Astra Private Service has to connect to the AWS Private Endpoint.

## Set up routing
1. Create hosted zone
2. Set the domain name (take this from the host field in the config.json file in the Secure Connect Bundle)
3. Select Private Hosted Zone, select the correct region and the VPC ID from above.

### Add a DNS record
1. Click create record
2. Record name will be *
3. Record type will be CNAM
4. Value will be the complete host field in the config.json file in the Secure Connect Bundle

# Now finalize the Astra configuration
At this point you can finalize the Astra configuration by accepting the Private Endpoint and restricting public access.

## Run Terraform
This Terraform script wil set up:
- Accept and connect to the Private Endpoint

Make sure to check the variables in `astra-database/variables.tf` before running Terraform and modify accordingly. These are the variables required:
- Database name
- The AWS Private Endpoint ID from above

Before running Terraform, set your Application Token from the Astra DB Dashoard:
```sh
export ASTRA_API_TOKEN=<your-token>
```

To run Terraform in order to create the database:
```sh
cd astra-database
terraform init
teraform plan
terraform apply
```

# Just for Reference

## Get the latest aws cli
```sh
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
```

## Configure your aws cli
```sh
aws configure
```
The following information is needed:
### AWS Access Key ID and Secret Access Key
Create a new user at https://console.aws.amazon.com/iam and note the Access Key ID and Secret Access Key
### Region and output format
In my case I'll use `eu-central-1` and `json`