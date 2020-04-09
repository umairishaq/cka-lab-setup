variable "ami" {
  type = string
}

variable "key_name" {
  type = string
}

variable "security_groups" {
  type = list(string)
}

variable "subnets" {
  type = list(string)
}

variable "worker_count" {
  type = number
}

variable "master_count" {
  type = number
}

variable "worker_instance_type" {
  type = string
}

variable "master_instance_type" {

}

