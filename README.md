# Set up DataStax Astra with an AWS PrivateLink through Terraform

## Run the terraform 

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

## 