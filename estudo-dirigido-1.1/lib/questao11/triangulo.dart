public class Triangulo {
    private double lado1;
    private double lado2;
    private double lado3;
    private String caractere;

    public Triangulo(double lado1, double lado2, double lado3, String caractere) {
        if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
            throw new IllegalArgumentException("Todos os lados devem ser maiores que 0.");
        }
        if (!ehTrianguloValido(lado1, lado2, lado3)) {
            throw new IllegalArgumentException("Os lados fornecidos não formam um triângulo válido.");
        }
        if (caractere == null || caractere.trim().isEmpty() || caractere.length() != 1) {
            throw new IllegalArgumentException("Caractere deve ser um único símbolo não vazio.");
        }

        this.lado1 = lado1;
        this.lado2 = lado2;
        this.lado3 = lado3;
        this.caractere = caractere;
    }

    private boolean ehTrianguloValido(double a, double b, double c) {
        return a + b > c && a + c > b && b + c > a;
    }

    public void setLado1(double lado1) { 
        if (lado1 <= 0 || !ehTrianguloValido(lado1, this.lado2, this.lado3))
            throw new IllegalArgumentException("Valor inválido para lado1.");
        this.lado1 = lado1; 
    }
    public void setLado2(double lado2) { 
        if (lado2 <= 0 || !ehTrianguloValido(this.lado1, lado2, this.lado3))
            throw new IllegalArgumentException("Valor inválido para lado2.");
        this.lado2 = lado2; 
    }
    public void setLado3(double lado3) { 
        if (lado3 <= 0 || !ehTrianguloValido(this.lado1, this.lado2, lado3))
            throw new IllegalArgumentException("Valor inválido para lado3.");
        this.lado3 = lado3; 
    }
    public void setCaractere(String caractere) {
        if (caractere == null || caractere.trim().isEmpty() || caractere.length() != 1) {
            throw new IllegalArgumentException("Caractere deve ser um único símbolo não vazio.");
        }
        this.caractere = caractere;
    }

    public double calcularPerimetro() {
        return lado1 + lado2 + lado3;
    }

    public double calcularArea() {
        double s = calcularPerimetro() / 2;
        return Math.sqrt(s * (s - lado1) * (s - lado2) * (s - lado3));
    }

    public void exibirResumo() {
        System.out.println("----- Resumo do Triângulo -----");
        System.out.printf("Lados: %.2f, %.2f, %.2f%n", lado1, lado2, lado3);
        System.out.printf("Perímetro: %.2f%n", calcularPerimetro());
        System.out.printf("Área: %.2f%n", calcularArea());
        System.out.println("-------------------------------\n");
    }

    public void desenharEsquerda() {
        int altura = (int)Math.round(Math.min(lado1, Math.min(lado2, lado3)));
        for (int i = 1; i <= altura; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print(caractere);
            }
            System.out.println();
        }
    }

    public void desenharCentralizado() {
        int altura = (int)Math.round(Math.min(lado1, Math.min(lado2, lado3)));
        for (int i = 1; i <= altura; i++) {
            for (int j = altura - i; j > 0; j--) System.out.print(" ");
            for (int j = 1; j <= (2*i - 1); j++) System.out.print(caractere);
            System.out.println();
        }
    }
}
