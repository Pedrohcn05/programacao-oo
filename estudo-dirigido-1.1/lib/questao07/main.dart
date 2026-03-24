public class Main {
    public static void main(String[] args) {
        Contador contador1 = new Contador(5);
        Contador contador2 = new Contador(0);

        contador1.exibirValor();
        contador1.incrementar();
        contador1.exibirValor();
        contador1.decrementar();
        contador1.exibirValor();
        contador1.zerar();
        contador1.exibirValor();

        contador2.exibirValor();
        contador2.decrementar(); // já está em 0, não diminui
        contador2.incrementar();
        contador2.exibirValor();
    }
}
