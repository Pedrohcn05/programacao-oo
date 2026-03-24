public class Main {
    public static void main(String[] args) {
        Relogio relogio1 = new Relogio(8, 30, 45);
        Relogio relogio2 = new Relogio(14, 5, 9);
        Relogio relogio3 = new Relogio(23, 59, 59);

        relogio1.exibirHorario();
        relogio2.exibirHorario();
        relogio3.exibirHorario();
    }
}
