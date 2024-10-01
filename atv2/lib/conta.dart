class Conta<T> {
  T titular;
  double _saldo;

  Conta(this.titular) : _saldo = 0.0;

  double get saldo => _saldo;

  void depositar(double valor) {
    if (valor <= 0) {
      throw Exception('O valor do depósito deve ser positivo.');
    }
    _saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= 0) {
      throw Exception('O valor do saque deve ser positivo.');
    }
    if (valor > _saldo) {
      throw Exception('Saldo insuficiente.');
    }
    _saldo -= valor;
  }
}

class ContaCorrente extends Conta<String> {
  ContaCorrente(String titular) : super(titular);
}

class ContaPoupanca extends Conta<String> {
  ContaPoupanca(String titular) : super(titular);
}
