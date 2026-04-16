void main() {
  try {
    // Criando endereços
    Endereco e1 = Endereco("Rua A", 100, "Centro", "Curitiba", "PR", 80000000);
    Endereco e2 = Endereco("Av. Brasil", 200, "Jardim", "São Paulo", "SP", 12345678);
    Endereco e3 = Endereco("Rua das Flores", 300, "Bela Vista", "Porto Alegre", "RS", 90012345);

    // Criando pessoas (cada uma com seu endereço)
    Pessoa p1 = Pessoa("João", 25, "123.456.789-00", e1);
    Pessoa p2 = Pessoa("Maria", 30, "987.654.321-00", e2);
    Pessoa p3 = Pessoa("Carlos", 20, "111.222.333-44", e3);

    // Exibindo dados completos
    p1.exibirPessoa();
    p2.exibirPessoa();
    p3.exibirPessoa();
  } catch (e) {
    print("Erro: $e");
  }
}
