variable "xyz" {
  default = {
    x = {
      a = 10
      b = 20
    }
    y = {
      a = 10
      b = 20
    }
  }
}

output "xyz" {
  value = { for k, v in var.xyz : k => v.a }
}
