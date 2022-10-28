variable "env" {
  type        = string
  description = "This variable represents environment"
  default     = "dev"
}
variable "instance_type" {
  type        = string
  description = "The size of EC2 Instances"
  default     = "t2.micro"
}
variable "max_size" {
  type        = number
  description = "Maximum number of instances"
  default     = 5
}
variable "min_size" {
  type        = number
  description = "Minimum number of instances"
  default     = 2
}
variable "desired_capacity" {
  type        = number
  description = "Minimum number of instances"
  default     = 2
}
variable "force_delete" {
  type        = bool
  description = "Argument to Read"
  default     = true
}
variable "vpc_zone_identifier" {
  type        = list(string) #[]
  description = "Subnets to create EC2 instance on"
  default     = ["subnet-929b8ec8", "subnet-3a604771"]
}
