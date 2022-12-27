variable "sample" {
  default = "Hello"
}

output "samplex" {
  value = var.sample
}

# String Data type
variable "sample1" {
  default = "Hello World"
}

# Number data type
variable "sample2" {
  default = 100
}

# Boolean Data type
variable "sample3" {
  default = true
}

variable "list1" {
  default = [
    "hello",
    100,
    true
  ]
}

variable "map1" {
  default = {
    string  = "Helo"
    number  = 100
    boolean = true
  }
}

// Refer normal variable
output "sample" {
  value = var.sample
}

// Refer list variable, print 0 index value
output "sample1" {
  value = var.list1[0]
}

output "sample11" {
  value = element(var.list1, 0)
}

// Refer map variable, print string key value
output "sample2" {
  value = var.map1["string"]
}

output "sample21" {
  value = lookup(var.map1, "string", null)
}
