# Interpolation documentation from https://developer.hashicorp.com/terraform/language/expressions/strings#interpolation

resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo ${var.echo_message} "
  }
}
