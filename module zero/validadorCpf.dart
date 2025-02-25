void main() {
  List<String> cpfs = [
    '136.096.586-65', //válido
    '111.111.111-11', //inválido
    '123.456.789.09', //válido
    '136.096.586-05', //inválido
    '136.096.586-60', //inválido
  ];

  for (final cpf in cpfs) {
    print('CPF: $cpf é ${validateCpf(cpf) ? 'válido' : 'inválido'}');
  }
}

bool validateCpf(String cpf) {
  cpf = cpf.replaceAll('.', '').replaceAll('-', '');
  if (cpf.length != 11 || cpf == '11111111111') {
    return false;
  }
  final numeros = cpf.split('').map((e) => int.parse(e)).toList();

  int primeiroDigito = _calcularDigito(numeros, 9);
  if (primeiroDigito != numeros[9]) {
    return false;
  }

  int segundoDigito = _calcularDigito(numeros, 10);
  if (segundoDigito != numeros[10]) {
    return false;
  }
  return true;
}

int _calcularDigito(List<int> numeros, int comprimento) {
  int soma = 0;
  int multiplicador = 2;

  for (int i = comprimento - 1; i >= 0; i--) {
    soma += numeros[i] * multiplicador++;
  }

  int resto = soma % 11;

  if (resto < 2) {
    return 0;
  } else {
    return 11 - resto;
  }
}
