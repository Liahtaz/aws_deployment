resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo 'var.echo_message'"
  }
}
