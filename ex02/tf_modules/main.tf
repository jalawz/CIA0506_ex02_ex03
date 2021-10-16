module "slackoapp" {
  source      = "./modules/slacko-app"
  vpc_id      = "vpc-03c45becab303a4fc"
  subnet_cidr = "10.0.102.0/24"
  name        = "Slacko"
  tags = {
    Aluno     = "Valdir Bitar"
    Turma     = "CL0506"
    Exercicio = "Slacko-mdules"
  }
}

output "slackoip" {
  value = module.slackoapp.slacko-app
}
