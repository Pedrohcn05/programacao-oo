public class Main {
    public static void main(String[] args) {
        Endereco endereco1 = new Endereco("Rua das Flores", 123, "Jardim Primavera", "São Paulo", "SP", 12345678);
        Endereco endereco2 = new Endereco("Avenida Brasil", 987, "Centro", "Rio de Janeiro", "RJ", 87654321);
        Endereco endereco3 = new Endereco("Travessa do Sol", 50, "Vila Nova", "Belo Horizonte", "MG", 23456789);

        endereco1.exibirEndereco();
        endereco2.exibirEndereco();
        endereco3.exibirEndereco();
    }
}
