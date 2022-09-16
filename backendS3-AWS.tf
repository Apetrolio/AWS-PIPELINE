data "aws_caller_identity" "pontocorrente" {}


resource "aws_s3_bucket" "remote-state-aws" {
  bucket = "tfstate-${data.aws_caller_identity.pontocorrente.accound_id}"
}

versioning {

  enable = true

}
# colocando as tags no resource com  versionamento

tags = {
  Description = "onde armanzena o remote tfstate"
  ManagedBy   = "Terraform"
}

