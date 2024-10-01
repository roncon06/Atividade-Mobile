import 'package:atv2/conta.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Conta', () {
    test('Depositar valor positivo', () {
      var conta = ContaCorrente('Teste');
      conta.depositar(100);
      expect(conta.saldo, 100);
    });

    test('Sacar valor dentro do saldo', () {
      var conta = ContaCorrente('Teste');
      conta.depositar(100);
      conta.sacar(50);
      expect(conta.saldo, 50);
    });

    test('Sacar valor maior que o saldo', () {
      var conta = ContaCorrente('Teste');
      conta.depositar(100);
      expect(() => conta.sacar(150), throwsA(isA<Exception>()));
    });

    test('Depositar valor negativo', () {
      var conta = ContaCorrente('Teste');
      expect(() => conta.depositar(-50), throwsA(isA<Exception>()));
    });
  });
}
