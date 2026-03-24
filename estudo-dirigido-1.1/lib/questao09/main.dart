public class Main {
    public static void main(String[] args) {
        Endereco endereco1 = new Endereco("Rua das Flores", 123, "Jardim Primavera", "São Paulo", "SP", 12345678);
        Endereco endereco2 = new Endereco("Avenida Brasil", 987, "Centro", "Rio de Janeiro", "RJ", 87654321);
        Endereco endereco3 = new Endereco("Travessa do Sol", 50, "Vila Nova", "Belo Horizonte", "MG", 23456789);

        Pessoa pessoa1 = new Pessoa("Maria Silva", 25, "123.456.789-00", endereco1);
        Pessoa pessoa2 = new Pessoa("João Santos", 30, "987.654.321-00", endereco2);
        Pessoa pessoa3 = new Pessoa("Ana Costa", 20, "111.222.333-44", endereco3);

        pessoa1.exibirPessoa();
        pessoa2.exibirPessoa();
        pessoa3.exibirPessoa();
    }
}
