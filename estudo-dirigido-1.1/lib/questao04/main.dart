public class Main {
    public static void main(String[] args) {
        Lampada lampada = new Lampada();

        lampada.exibirEstado();
        lampada.ligar();
        lampada.exibirEstado();
        lampada.desligar();
        lampada.exibirEstado();
        lampada.ligar();
        lampada.desligar();
        lampada.ligar();
        lampada.desligar();
        lampada.ligar(); // 5ª vez -> deve queimar
        lampada.exibirEstado();

        lampada.ligar();
    }
}
