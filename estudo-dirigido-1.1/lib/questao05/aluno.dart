
public class Aluno {
    private String nome;
    private double nota1;
    private double nota2;

    public Aluno(String nome, double nota1, double nota2) {
        if (nome == null || nome.trim().isEmpty()) {
            throw new IllegalArgumentException("O nome não pode ser vazio.");
        }
        if (nota1 < 0 || nota1 > 10 || nota2 < 0 || nota2 > 10) {
            throw new IllegalArgumentException("Notas devem estar entre 0 e 10.");
        }
        this.nome = nome;
        this.nota1 = nota1;
        this.nota2 = nota2;
    }
  
    public double calcularMedia() {
        return (nota1 + nota2) / 2;
    }

    public String verificarAprovacao() {
        return calcularMedia() >= 6 ? "Aprovado" : "Reprovado";
    }

    public void exibirBoletim() {
        System.out.println("----- Boletim do Aluno -----");
        System.out.println("Nome: " + nome);
        System.out.printf("Nota 1: %.2f%n", nota1);
        System.out.printf("Nota 2: %.2f%n", nota2);
        System.out.printf("Média: %.2f%n", calcularMedia());
        System.out.println("Situação: " + verificarAprovacao());
        System.out.println("-----------------------------\n");
    }
}
