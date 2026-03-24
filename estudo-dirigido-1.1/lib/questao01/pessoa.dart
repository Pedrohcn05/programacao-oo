
public class Pessoa {
    private String nome;
    private int idade;

    public Pessoa(String nome, int idade) {
        if (nome == null || nome.trim().isEmpty()) {
            throw new IllegalArgumentException("O nome não pode ser vazio.");
        }
        if (idade < 0) {
            throw new IllegalArgumentException("A idade não pode ser negativa.");
        }
        this.nome = nome;
        this.idade = idade;
    }
    
    public void exibirDados() {
        System.out.println("----- Dados da Pessoa -----");
        System.out.println("Nome: " + nome);
        System.out.println("Idade: " + idade + " anos");
        System.out.println("---------------------------\n");
    }
}
