resource "random_pet" "mypet" {
  prefix    = "Mr"
  separator = "."
  length    = 1
}

resource "local_file" "mypet" {
  filename = "pets.txt"
  content  = random_pet.mypet.id
}
