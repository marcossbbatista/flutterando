void main() {
  String cardNumber = '4916 6418 5936 9080'; // Cartão válido
  // String cardNumber = '5419 8250 0346 1210';  // Cartão inválido
  cardNumber = cardNumber.replaceAll(' ', '');
  print(validarCartao(cardNumber));
}

String validarCartao(String cardNumber) {
  int resultado = 0;
  int ultimoDigito = int.parse(cardNumber[cardNumber.length - 1]);

  for (int i = 0; i < cardNumber.length - 1; i++) {
    int numero = int.parse(cardNumber[i]);

    if (i % 2 == 0) {
      numero *= 2;
      if (numero > 9) {
        numero = (numero ~/ 10) + (numero % 10);
      }
    }

    resultado += numero;
  }

  int resto = resultado % 10;

  int resultadoFinal = (10 - resto) % 10;

  if (resultadoFinal == ultimoDigito) {
    return 'Cartão Válido';
  } else {
    return 'Cartão Inválido';
  }
}
