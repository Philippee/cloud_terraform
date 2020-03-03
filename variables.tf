variable "route" {
    description = "List of application route"
    default = {
        app-1 = "127.0.0.1/22"
        app-2 = "127.0.0.2/22"
        app-3 = "127.0.0.3/22"
    }
}

variable "access_key" {}
variable "secret_key" {}
variable "key_name" {}
variable "key_path" {}
variable "www_count" {
  description = "Number of web servers"
  default = "2"
}
variable "aws_region" {
  default = "eu-west-1"
}

# Using ubuntu amis
variable "aws_amis" {
  default = {
    eu-west-1 = "ami-b1cf19c6"
    us-east-1 = "ami-de7ab6b6"
    us-west-1 = "ami-3f75767a"
    us-west-2 = "ami-21f78e11"
  }
}
variable "project" {
  default = "tf-demo"
}