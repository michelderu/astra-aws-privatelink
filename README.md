# DataStax Astra through Terraform

## Run terraform to create the Astra database
This Terraform script wil set up:
- An Astra database
- A Service Account on the database
- A Private Link resource

Make sure to check the variables in `astra-database/variables.tf` before running Terraform.

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
- Secure Connect Bundle URL
- Service Account (Client ID, Client Secret and Token)
- Private Link ServiceName

# Link your Astra DB to AWS using Private Link

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