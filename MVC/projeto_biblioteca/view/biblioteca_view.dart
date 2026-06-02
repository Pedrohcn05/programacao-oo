import 'dart:io';

class BibliotecaView {
  void exibirMenu() {
    print('\n=== SISTEMA DE BIBLIOTECA ===');
    print('1 - Cadastrar livro disponível');
    print('2 - Listar livros emprestados');
    print('3 - Cadastrar usuário');
    print('4 - Listar usuários');
    print('5 - Emprestar livro');
    print('6 - Devolver livro');
    print('9 - Sair');
  }

  int lerOpcao() {
    stdout.write('Escolha uma opção: ');
    return int.tryParse(stdin.readLineSync() ?? '') ?? -1;
  }

  String lerTexto(String mensagem) {
    stdout.write(mensagem);
    return stdin.readLineSync() ?? '';
  }

  void mostrarMensagem(String mensagem) {
    print(mensagem);
  }
}
