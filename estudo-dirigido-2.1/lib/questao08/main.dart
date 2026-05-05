void main() {
  var livro = Livro('Dom Casmurro', 'Machado de Assis');
  livro.exibirInformacoes();

  print('---');

  var ebook = LivroDigital('1984', 'George Orwell', 2.5);
  ebook.exibirInformacoes();
}
