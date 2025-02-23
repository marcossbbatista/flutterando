void main() {
  var marcos = people('Marcos', 25, 1.70, 60);
  marcos.imc();
}

class people {
  String name;
  int age;
  double height;
  double weight;

  people(
    this.name,
    this.age,
    this.height,
    this.weight,
  );

  imc() {
    double valor = weight / (height * height);
    return print('IMC de $name: $valor');
  }
}
