void main() {
  String cpf = '136.096.586-65';

  List<int> numeros = functionCpf(cpf);

  int primeiroDigito = calcularDigito(numeros, 9);
  print('Primeiro Dígito é $primeiroDigito.');

  int segundoDigito = calcularDigito(numeros, 10);
  print('Segundo Dígito é $segundoDigito.');
}

List<int> functionCpf(String cpf) {
  cpf = cpf.replaceAll('.', '').replaceAll('-', '');
  if (cpf.length != 11) {
    print('CPF inválido');
  }
  return cpf.split('').map((e) => int.parse(e)).toList();
}

int calcularDigito(List<int> numeros, int comprimento) {
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
