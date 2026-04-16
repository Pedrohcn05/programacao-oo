class Usuario {
  String _nome;
  String _email;
  String _apelido;
 
  // Construtor com parâmetro opcional (posicional)
  Usuario(this._nome, this._email, [String? apelido])
      : _apelido = apelido ?? _nome;
 
  // Exibir perfil
  void exibirPerfil() {
    print('Nome: $_nome');
    print('Email: $_email');
    print('Apelido: $_apelido');
  }
}
