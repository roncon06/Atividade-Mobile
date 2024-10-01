import 'package:atv2/conta.dart';

void main() {
  var conta1 = ContaCorrente('João');
  conta1.depositar(100);
  conta1.sacar(50);
  print('Saldo da Conta Corrente de João: ${conta1.saldo}');

  var conta2 = ContaPoupanca('Maria');
  conta2.depositar(200);
  conta2.sacar(100);
  print('Saldo da Conta Poupança de Maria: ${conta2.saldo}');
}
