void main() {
  // 8 * 5 == 4 * 10
  print(regradetres(grupo12: 5, grupo21: 4, grupo22: 10));
  print(regradetres(grupo11: 8, grupo21: 4, grupo22: 10));
  print(regradetres(grupo11: 8, grupo12: 5, grupo22: 10));
  print(regradetres(grupo11: 8, grupo12: 5, grupo21: 4));
}

double regradetres({
  double? grupo11,
  double? grupo12,
  double? grupo21,
  double? grupo22,
}) {
  List<double?> values = [grupo11, grupo12, grupo21, grupo22];

  int valuesNull = values.where((v) => v == null).length;

  if (valuesNull != 1) {
    throw ArgumentError("Somente um dos valores deve ser nulo.");
  }

  if (grupo11 == null) {
    return grupo21! * grupo22! / grupo12!;
  } else if (grupo12 == null) {
    return grupo22! * grupo21! / grupo11;
  } else if (grupo21 == null) {
    return grupo11 * grupo12 / grupo22!;
  } else {
    return grupo11 * grupo12 / grupo21;
  }
}
