void main() {
  // Criando dois clientes
  Cliente cliente1 = Cliente("Pedro", "pedro@email.com", 100.0, true);
  Cliente cliente2 = Cliente("Maria", "maria@email.com", 50.0, false);

  // Alterando dados com setters
  cliente1.nome = "Pedro Henrique";
  cliente2.email = "maria123@email.com";

  // Adicionando saldo
  cliente1.adicionarSaldo(150.0);

  // Debitando saldo
  cliente2.debitarSaldo(20.0);

  // Ativar cliente 2
  cliente2.ativar();

  // Exibindo dados finais
  cliente1.exibirCliente();
  cliente2.exibirCliente();
}
