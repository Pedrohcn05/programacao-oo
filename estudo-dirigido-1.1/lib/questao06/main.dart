public class Main {
    public static void main(String[] args) {
        Produto produto = new Produto(1, "Notebook", 3500.00, 3);
        produto.exibirResumo();

        produto.setCodigo(2);
        produto.setNome("Smartphone");
        produto.setPrecoUnitario(1500.00);
        produto.setQuantidade(12);
        produto.exibirResumo();
    }
}
