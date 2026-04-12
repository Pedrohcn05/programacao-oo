void main() {
  // Criando clientes
  Cliente c1 = Cliente("Pedro", "pedro@email.com", 100.0, true);
  Cliente c2 = Cliente("Maria", "maria@email.com", 200.0, true);
  Cliente c3 = Cliente("João", "joao@email.com", 50.0, false);

  // Criando lista
  ListaCliente lista = ListaCliente();

  // Inserindo clientes
  lista.inserir(c1);
  lista.inserir(c2);
  lista.inserir(c3);

  // Exibindo lista inicial
  print("Lista inicial:");
  lista.exibirLista();

  // Removendo cliente (índice 1 → Maria)
  lista.remover(1);

  // Mostrando tamanho
  print("Tamanho da lista: ${lista.tamanho()}");

  // Recuperando cliente
  Cliente? clienteRecuperado = lista.get(0);
  if (clienteRecuperado != null) {
    print("Cliente recuperado:");
    clienteRecuperado.exibirCliente();
  }

  // Exibindo lista final
  print("Lista final:");
  lista.exibirLista();
}
