
public class Data {
    private int dia;
    private int mes;
    private int ano;

    public Data(int dia, int mes, int ano) {
        if (dia < 1 || dia > 31) {
            throw new IllegalArgumentException("Dia deve estar entre 1 e 31.");
        }
        if (mes < 1 || mes > 12) {
            throw new IllegalArgumentException("Mês deve estar entre 1 e 12.");
        }
        if (ano <= 0) {
            throw new IllegalArgumentException("Ano deve ser maior que 0.");
        }

        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
    }

    public void exibirData() {
        System.out.printf("%02d/%02d/%04d%n", dia, mes, ano);
    }
}
