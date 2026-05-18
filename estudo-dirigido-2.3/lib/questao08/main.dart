void main() {
  ListaGenerica<Informativo> lista =
      ListaGenerica<Informativo>();

  lista.adicionar(
      LivroFisico('Clean Code', 'Robert Martin', 425));

  lista.adicionar(
      LivroDigital('Dart Básico', 'Mariana Souza', 12));

  lista.adicionar(
      Audiobook('POO na Prática', 'Carlos Lima', 180));

  lista.adicionar(
      LivroFisico('Algoritmos Modernos', 'Ana Torres', 350));

  lista.adicionar(
      LivroDigital('Flutter Essencial', 'Pedro Alves', 25));

  print('--- Lista de livros ---');
  lista.imprimirItens();

  print('\n--- Informações dos livros ---');

  for (var livro in lista.obterItens()) {
    livro.exibirInformacoes();
  }
}
