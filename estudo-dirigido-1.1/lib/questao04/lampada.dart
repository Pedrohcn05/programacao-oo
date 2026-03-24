public class Lampada {
    private boolean ligada;
    private int quantidadeLigacoes;
    private boolean queimada;

    // Construtor
    public Lampada() {
        this.ligada = false;
        this.quantidadeLigacoes = 0;
        this.queimada = false;
    }

    public void ligar() {
        if (queimada) {
            System.out.println("Não é possível ligar: a lâmpada está queimada.");
            return;
        }

        if (!ligada) {
            ligada = true;
            quantidadeLigacoes++;
            System.out.println("Lâmpada ligada.");

            if (quantidadeLigacoes >= 5) {
                queimada = true;
                ligada = false;
                System.out.println("A lâmpada queimou!");
            }
        } else {
            System.out.println("A lâmpada já está ligada.");
        }
    }

    public void desligar() {
        if (ligada) {
            ligada = false;
            System.out.println("Lâmpada desligada.");
        } else if (!queimada) {
            System.out.println("A lâmpada já está desligada.");
        }
    }
  
    public void exibirEstado() {
        if (queimada) {
            System.out.println("Estado da lâmpada: QUEIMADA");
        } else if (ligada) {
            System.out.println("Estado da lâmpada: LIGADA");
        } else {
            System.out.println("Estado da lâmpada: DESLIGADA");
        }
    }
}
