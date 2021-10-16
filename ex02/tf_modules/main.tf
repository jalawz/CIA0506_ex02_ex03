module "slackoapp" {
  source      = "./modules/slacko-app"
  vpc_id      = "vpc-0279eb78007c2fabc"
  subnet_cidr = var.subnet_cidr
  name        = "Slacko"
  tags = {
    Aluno     = "Paulo Menezes"
    Turma     = "CL0506"
    Exercicio = "Slacko-mdules"
  }
}

output "slackoip" {
  value = module.slackoapp.slacko-app
}
