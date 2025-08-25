#variable "instance_type" {
#  description = "Type of EC2 instance to provision"
#  default     = "t3.nano"
#}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"  # Free Tier (x86_64). Use t3.micro if you prefer.
  validation {
    condition     = can(index(["t2.micro","t3.micro"], var.instance_type))
    error_message = "Use t2.micro or t3.micro with this x86_64 AMI for Free Tier."
  }
}
