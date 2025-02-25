void main() {
  print(fibonacci(92));
}

List<int> fibonacci(int n) {
  if (n < 1 || n > 93) {
    print('n deve estar entre 1 e 93');
  }
  int a = 0;
  int b = 1;

  List<int> fibo = [0];
  while (fibo.length < n) {
    int proximo = a + b;
    a = b;
    b = proximo;
    fibo.add(a);
  }
  return fibo;
}
