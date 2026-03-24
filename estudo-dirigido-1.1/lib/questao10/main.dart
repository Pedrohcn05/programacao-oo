public class Main {
    public static void main(String[] args) {
        Quadrado q1 = new Quadrado(4, "*");
        Quadrado q2 = new Quadrado(6, "#");

        Quadrado q3 = new Quadrado(5, "@");
        Quadrado q4 = new Quadrado(5, "@");

        q1.exibirResumo();
        q1.desenhar();
        System.out.println();

        q2.exibirResumo();
        q2.desenhar();
        System.out.println();

        q3.exibirResumo();
        q3.desenhar();
        System.out.println();

        q4.exibirResumo();
        q4.desenhar();
        System.out.println();

        System.out.println("q1 é igual a q2? " + q1.ehIgual(q2));
        System.out.println("q3 é igual a q4? " + q3.ehIgual(q4));
    }
}
