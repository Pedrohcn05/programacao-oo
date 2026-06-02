import '../model/livro.dart';
import '../model/usuario.dart';
import '../view/biblioteca_view.dart';

class BibliotecaController {
  final BibliotecaView _view = BibliotecaView();

  final List<Livro> _livros = [];
  final List<Usuario> _usuarios = [];

  void executar() {
    bool sair = false;

    while (!sair) {
      _view.exibirMenu();

      switch (_view.lerOpcao()) {
        case 1:
          cadastrarLivro();
          break;

        case 2:
          listarLivrosEmprestados();
          break;

        case 3:
          cadastrarUsuario();
          break;

        case 4:
          listarUsuarios();
          break;

        case 5:
          emprestarLivro();
          break;

        case 6:
          devolverLivro();
          break;

        case 9:
          sair = true;
          _view.mostrarMensagem("Sistema encerrado.");
          break;

        default:
          _view.mostrarMensagem("Opção inválida.");
      }
    }
  }

  void cadastrarLivro() {
    String titulo =
        _view.lerTexto("Digite o título do livro: ");

    _livros.add(Livro(titulo: titulo));

    _view.mostrarMensagem("Livro cadastrado com sucesso!");
  }

  void listarLivrosEmprestados() {
    bool encontrou = false;

    print("\n=== LIVROS EMPRESTADOS ===");

    for (var livro in _livros) {
      if (livro.emprestado) {
        print(livro);
        encontrou = true;
      }
    }

    if (!encontrou) {
      print("Nenhum livro emprestado.");
    }
  }

  void cadastrarUsuario() {
    String nome =
        _view.lerTexto("Digite o nome do usuário: ");

    _usuarios.add(Usuario(nome: nome));

    _view.mostrarMensagem("Usuário cadastrado com sucesso!");
  }

  void listarUsuarios() {
    print("\n=== USUÁRIOS ===");

    if (_usuarios.isEmpty) {
      print("Nenhum usuário cadastrado.");
      return;
    }

    for (var usuario in _usuarios) {
      print(usuario);
    }
  }

  void emprestarLivro() {
    String titulo =
        _view.lerTexto("Digite o título do livro: ");

    for (var livro in _livros) {
      if (livro.titulo == titulo &&
          !livro.emprestado) {
        livro.emprestado = true;
        _view.mostrarMensagem(
            "Livro emprestado com sucesso!");
        return;
      }
    }

    _view.mostrarMensagem(
        "Livro não encontrado ou já emprestado.");
  }

  void devolverLivro() {
    String titulo =
        _view.lerTexto("Digite o título do livro: ");

    for (var livro in _livros) {
      if (livro.titulo == titulo &&
          livro.emprestado) {
        livro.emprestado = false;
        _view.mostrarMensagem(
            "Livro devolvido com sucesso!");
        return;
      }
    }

    _view.mostrarMensagem(
        "Livro não encontrado ou não está emprestado.");
  }
}
