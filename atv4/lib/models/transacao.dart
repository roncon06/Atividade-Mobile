import 'package:atv4/models/enums/tipo_transacao.dart';

class Transacao {
  final double valor;
  final TipoTransacao tipoTransacao;

  Transacao(this.valor, this.tipoTransacao);
}
