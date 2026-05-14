void main() {
  // Criando os objetos
  var leite = ProdutoPerecivel(
    'Leite',
    6.50,
    '20/05/2026',
  );

  var iogurte = ProdutoPerecivel(
    'Iogurte',
    4.80,
    '18/05/2026',
  );

  var notebook = ProdutoEletronico(
    'Notebook',
    3500.00,
    24,
  );

  var smartphone = ProdutoEletronico(
    'Smartphone',
    2200.00,
    12,
  );

  var queijo = ProdutoPerecivel(
    'Queijo',
    28.90,
    '25/05/2026',
  );

  // Lista genérica usando a interface
  ListaGenerica<Exibivel> produtos =
      ListaGenerica<Exibivel>();

  // Adicionando objetos
  produtos.adicionar(leite);
  produtos.adicionar(iogurte);
  produtos.adicionar(notebook);
  produtos.adicionar(smartphone);
  produtos.adicionar(queijo);

  // Imprimindo usando imprimirItens()
  print('--- imprimirItens() ---');
  produtos.imprimirItens();

  // Loop chamando exibir()
  print('\n--- Método exibir() ---');

  for (var produto in produtos.obterItens()) {
    produto.exibir();
  }
}
