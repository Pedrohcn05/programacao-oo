public class Relogio {
    private int hora;
    private int minuto;
    private int segundo;

    public Relogio(int hora, int minuto, int segundo) {
        if (hora < 0 || hora > 23) {
            throw new IllegalArgumentException("Hora deve estar entre 0 e 23.");
        }
        if (minuto < 0 || minuto > 59) {
            throw new IllegalArgumentException("Minuto deve estar entre 0 e 59.");
        }
        if (segundo < 0 || segundo > 59) {
            throw new IllegalArgumentException("Segundo deve estar entre 0 e 59.");
        }

        this.hora = hora;
        this.minuto = minuto;
        this.segundo = segundo;
    }

    public void exibirHorario() {
        System.out.printf("%02d:%02d:%02d%n", hora, minuto, segundo);
    }
}
