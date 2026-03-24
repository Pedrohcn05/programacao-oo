public class Endereco {
    private String rua;
    private int numero;
    private String bairro;
    private String cidade;
    private String estado;
    private int cep;

    public Endereco(String rua, int numero, String bairro, String cidade, String estado, int cep) {
        if (rua == null || rua.trim().isEmpty()) {
            throw new IllegalArgumentException("Rua não pode ser vazia.");
        }
        if (numero <= 0) {
            throw new IllegalArgumentException("Número deve ser maior que 0.");
        }
        if (bairro == null || bairro.trim().isEmpty()) {
            throw new IllegalArgumentException("Bairro não pode ser vazio.");
        }
        if (cidade == null || cidade.trim().isEmpty()) {
            throw new IllegalArgumentException("Cidade não pode ser vazia.");
        }
        if (estado == null || estado.trim().isEmpty()) {
            throw new IllegalArgumentException("Estado não pode ser vazio.");
        }
        if (cep < 10000 || cep > 99999999) {
            throw new IllegalArgumentException("CEP inválido.");
        }

        this.rua = rua;
        this.numero = numero;
        this.bairro = bairro;
        this.cidade = cidade;
        this.estado = estado;
        this.cep = cep;
    }

    public void exibirEndereco() {
        String cepFormatado = String.format("%05d-%03d", cep / 1000, cep % 1000);
        System.out.println("----- Endereço -----");
        System.out.println("Rua: " + rua + ", Nº: " + numero);
        System.out.println("Bairro: " + bairro);
        System.out.println("Cidade: " + cidade);
        System.out.println("Estado: " + estado);
        System.out.println("CEP: " + cepFormatado);
        System.out.println("-------------------\n");
    }
}
