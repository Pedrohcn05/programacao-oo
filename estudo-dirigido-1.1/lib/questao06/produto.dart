public class Produto {
    private int codigo;
    private String nome;
    private double precoUnitario;
    private int quantidade;

    public Produto(int codigo, String nome, double precoUnitario, int quantidade) {
        if (codigo <= 0) {
            throw new IllegalArgumentException("Código deve ser maior que 0.");
        }
        if (nome == null || nome.trim().isEmpty()) {
            throw new IllegalArgumentException("Nome não pode ser vazio.");
        }
        if (precoUnitario <= 0) {
            throw new IllegalArgumentException("Preço unitário deve ser maior que 0.");
        }
        if (quantidade <= 0) {
            throw new IllegalArgumentException("Quantidade deve ser maior que 0.");
        }

        this.codigo = codigo;
        this.nome = nome;
        this.precoUnitario = precoUnitario;
        this.quantidade = quantidade;
    }

    public double calcularDesconto() {
        if (quantidade >= 20) return 0.15 * precoUnitario * quantidade;
        if (quantidade >= 10) return 0.10 * precoUnitario * quantidade;
        if (quantidade >= 5) return 0.05 * precoUnitario * quantidade;
        return 0.0;
    }

    public double calcularTotal() {
        return precoUnitario * quantidade - calcularDesconto();
    }
  
    public void exibirResumo() {
        System.out.println("----- Resumo do Produto -----");
        System.out.println("Código: " + codigo);
        System.out.println("Nome: " + nome);
        System.out.printf("Preço unitário: R$ %.2f%n", precoUnitario);
        System.out.println("Quantidade: " + quantidade);
        System.out.printf("Desconto: R$ %.2f%n", calcularDesconto());
        System.out.printf("Total: R$ %.2f%n", calcularTotal());
        System.out.println("-----------------------------\n");
    }

    public void setCodigo(int codigo) { this.codigo = codigo; }
    public void setNome(String nome) { this.nome = nome; }
    public void setPrecoUnitario(double precoUnitario) { this.precoUnitario = precoUnitario; }
    public void setQuantidade(int quantidade) { this.quantidade = quantidade; }
}
