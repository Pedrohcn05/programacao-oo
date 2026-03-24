public class Pessoa {
    private String nome;
    private int idade;
    private String cpf;
    private Endereco endereco;

    public Pessoa(String nome, int idade, String cpf, Endereco endereco) {
        if (nome == null || nome.trim().isEmpty()) {
            throw new IllegalArgumentException("Nome não pode ser vazio.");
        }
        if (idade < 0) {
            throw new IllegalArgumentException("Idade deve ser maior ou igual a 0.");
        }
        if (cpf == null || cpf.trim().isEmpty()) {
            throw new IllegalArgumentException("CPF não pode ser vazio.");
        }
        if (endereco == null) {
            throw new IllegalArgumentException("Endereço deve ser fornecido.");
        }

        this.nome = nome;
        this.idade = idade;
        this.cpf = cpf;
        this.endereco = endereco;
    }

    public void exibirPessoa() {
        System.out.println("===== Dados da Pessoa =====");
        System.out.println("Nome: " + nome);
        System.out.println("Idade: " + idade + " anos");
        System.out.println("CPF: " + cpf);
        endereco.exibirEndereco(); // exibe os dados do endereço
        System.out.println("===========================\n");
    }
}
