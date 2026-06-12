resource "random_pet" "mypet" {
  prefix    = "Mr"
  separator = "."
  length    = 1
}

resource "local_file" "mypet" {
  filename = var.file_name
  content  = var.content
}