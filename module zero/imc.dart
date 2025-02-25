void main() {
  var marcos = People(name: 'Marcos', age: 25, height: 1.70, weight: 58.51);
  print('IMC de ${marcos.name}: ${marcos.imc().toStringAsFixed(2)} kg/m²');
}

class People {
  String name;
  int age;
  double height;
  double weight;

  People({
    required this.name,
    required this.age,
    required this.height,
    required this.weight,
  });

  double imc() {
    return weight / (height * height);
  }
}
