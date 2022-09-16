# o backend para o s3 no teraform 

backend "s3" {

  bucket = "meu tfstate criado o codigo"

  key = "terah que ser um caminho/arquivo  no s3 da aws que esteja colocado o tfstate"

  region = "us-east-1"

  profile = "colocou  tf014 precisa ver isto"

}
