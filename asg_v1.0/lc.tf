resource "aws_launch_configuration" "main" {
  name            = "${var.env}-main-lc-new" # dev-main-lc
  image_id        = "ami-017fecd1353bcc96e"
  instance_type   = var.instance_type
  user_data       = data.template_file.userdata.rendered
  security_groups = [aws_security_group.main.id]
  key_name        = aws_key_pair.terraform_server_key.id

  lifecycle {
    create_before_destroy = true
  }
}
resource "aws_key_pair" "terraform_server_key" {
  key_name   = "Terraform-Server-Key"
  public_key = file("~/.ssh/id_rsa.pub")
}

# Launch configuration is Immutable(NON-CHANGEABLE!)


// 1. Naming Standard = aws-nonprod-dev-ue1-wordpress-lc
// 2. Tagging Standard/Common Tags = 