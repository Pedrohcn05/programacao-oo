class IngressoVip extends Ingresso
    implements Calculavel {

  double valorAdicional;

  IngressoVip(
    String evento,
    double valor,
    this.valorAdicional,
  ) : super(evento, valor);

  @override
  double valorFinal() {
    return valor + valorAdicional;
  }

  @override
  String toString() {
    return 'Ingresso VIP | '
        'Evento: $evento | '
        'Valor original: R\$ ${valor.toStringAsFixed(2)} | '
        'Valor final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
