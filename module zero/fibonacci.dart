void main() {
  int a = 0;
  int b = 1;

  while (a < 120) {
    print('valor: $a');
    int proximo = a + b;
    a = b;
    b = proximo;
  }
}
