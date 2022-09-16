# criando security group 

resource "aws_security_group" "coloca-ssh" {
  name        = "coloca-ssh"
  description = "acessa as maquinas via ssh "

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/10", "192.10.1.1", "192.x.x.x."]
  }
}

resource "aws_security_group" "coloca-http" {
  name        = "coloca-http"
  description = "acessa as maquinas via http "

  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0", "192.10.1.1", "192.x.x.x."]
  }
}


resource "aws_security_group" "coloca-https" {
  name        = "coloca-https"
  description = "acessa as maquinas via https "

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0", "192.10.1.1", "192.x.x.x."]
  }
}
