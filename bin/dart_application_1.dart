import 'dart:io';

void main() {
  print("Вве-дите первое число");
  num num1 = double.tryParse(stdin.readLineSync() ?? "") ?? -12312312321311;
  if (num1 == -12312312321311) {
    print("Вы ввели не число,введите еще раз!");
    num1 = double.tryParse(stdin.readLineSync() ?? "") ?? -12312312321311;
  } else {}

  print('Введите операцию (+ - * /)');
  String action = stdin.readLineSync() ?? "";

  print("Введите второе число");
  num num2 = double.tryParse(stdin.readLineSync() ?? "") ?? -12312312321311;
  if (num2 == -12312312321311) {
    print("Вы ввели не число,введите еще раз!");
    num2 = double.tryParse(stdin.readLineSync() ?? "") ?? -12312312321311;
  } else {}

  var result;

  if (num1 != -12312312321311 && num2 != -12312312321311) {
    if (action == '+') {
      result = num1 + num2;
    } else if (action == '-') {
      result = num1 - num2;
    } else if (action == '/') {
      result = num1 - num2;
    } else if (action == '*') {
      result = num1 * num2;
    } else {
      print("Вы ввели некорректную операцию");
    }

    if (result is double) {
      result % 1 == 0 ? print(result.toInt()) : print(result);
    }
  } else {
    print("Одно из введенных значений не число");
  }
}
