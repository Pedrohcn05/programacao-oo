
import 'aluno.dart';

void main() {
  List<Aluno> alunos = List.generate(
      10, (i) => Aluno("Aluno $i", 5 + i * 0.3, 6 + i * 0.2));

  for (var a in alunos) {
    a.exibirBoletim();
  }
}
