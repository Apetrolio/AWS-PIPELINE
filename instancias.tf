#criando as instancias ou seja as mauinas

resource "aws_instance" "maq1-dev" {
  count         = 3
  ami           = "pegar no aws o id do ubnttipo-ami-00e523646"
  instance_type = "t2.micro"
  key_name      = "nome-que-foi-dado na criacao da key-pair"

  tags = {
    Name = "maq1-dev-${count.index}"
  }
  vpc_security_group_id = ["aws_security_group.coloca-ssh.id", "aws_security_group.coloca-http.id", "aws_security_group.coloca-https.id"]
}
