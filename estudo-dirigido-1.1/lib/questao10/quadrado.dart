public class Quadrado {
    private double lado;
    private String caractere;

    public Quadrado(double lado, String caractere) {
        if (lado <= 0) {
            throw new IllegalArgumentException("O lado deve ser maior que 0.");
        }
        if (caractere == null || caractere.trim().isEmpty() || caractere.length() != 1) {
            throw new IllegalArgumentException("Caractere deve ser um único símbolo não vazio.");
        }
        this.lado = lado;
        this.caractere = caractere;
    }

    public double calcularArea() {
        return lado * lado;
    }

    public double calcularPerimetro() {
        return 4 * lado;
    }

    public void desenhar() {
        int tamanho = (int) Math.round(lado); // converte para inteiro para desenhar
        for (int i = 0; i < tamanho; i++) {
            for (int j = 0; j < tamanho; j++) {
                System.out.print(caractere);
            }
            System.out.println();
        }
    }

    public void exibirResumo() {
        System.out.println("----- Resumo do Quadrado -----");
        System.out.println("Lado: " + lado);
        System.out.printf("Área: %.2f%n", calcularArea());
        System.out.printf("Perímetro: %.2f%n", calcularPerimetro());
        System.out.println("-------------------------------\n");
    }

    public boolean ehIgual(Quadrado outroQuadrado) {
        if (outroQuadrado == null) return false;
        return this.lado == outroQuadrado.lado && this.caractere.equals(outroQuadrado.caractere);
    }
}
