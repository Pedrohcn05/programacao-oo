void main() {
  try {
    // Instanciando exatamente 3 endereços
    Endereco e1 = Endereco("Rua A", 123, "Centro", "Curitiba", "PR", 80000000);
    Endereco e2 = Endereco("Av. Brasil", 456, "Jardim", "São Paulo", "SP", 12345678);
    Endereco e3 = Endereco("Rua das Flores", 789, "Bela Vista", "Porto Alegre", "RS", 90012345);

    // Exibindo os endereços
    e1.exibirEndereco();
    e2.exibirEndereco();
    e3.exibirEndereco();
  } catch (e) {
    print("Erro: $e");
  }
}
