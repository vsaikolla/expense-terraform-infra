variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
  
}

variable "common_tags" {
    default = {
        project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "zone_id" {
  default = "Z0775134HZ7F8RJMR6R6"
}