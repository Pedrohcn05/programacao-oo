public class Main {
    public static void main(String[] args) {
        // Instanciando 3 pessoas diferentes
        Pessoa pessoa1 = new Pessoa("Maria", 25);
        Pessoa pessoa2 = new Pessoa("João", 30);
        Pessoa pessoa3 = new Pessoa("Ana", 20);

        pessoa1.exibirDados();
        pessoa2.exibirDados();
        pessoa3.exibirDados();
    }
}
