variable "aws_access_key" {
    type=string
    description = "AWS Access key"
    sensitive = true
}
#VAriable for SECRET_KEY

variable "aws_secret_key" {
    type=string
    description = "AWS Secret key"
    sensitive = true
}

#Region list

variable "aws_region" {
    type=list(string)
    description = "AWS Region list"
    default = "eu-east-1"
    }