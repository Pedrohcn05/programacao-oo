public class Contador {
    private int valor;

    public Contador(int valorInicial) {
        if (valorInicial < 0) {
            throw new IllegalArgumentException("O valor inicial deve ser maior ou igual a 0.");
        }
        this.valor = valorInicial;
    }

    public void incrementar() {
        valor++;
    }

    public void decrementar() {
        if (valor > 0) {
            valor--;
        } else {
            System.out.println("O contador já está em 0, não pode ser negativo.");
        }
    }

    public void zerar() {
        valor = 0;
    }

    public void exibirValor() {
        System.out.println("Valor atual do contador: " + valor);
    }
}
