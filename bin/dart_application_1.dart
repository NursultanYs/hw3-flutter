import 'dart:io';

void main() {
  print("Вве-дите первое число");
  var num1 = double.tryParse(stdin.readLineSync() ?? "") ?? '';
  if (num1 == '') {
    print("Вы ввели не число,введите еще раз!");
    num1 = double.tryParse(stdin.readLineSync() ?? "") ?? '';
  } 

  print('Введите операцию (+ - * /)');
  String action = stdin.readLineSync() ?? "";

  print("Введите второе число");
  var num2 = double.tryParse(stdin.readLineSync() ?? "") ?? '';
  if (num2 == '') {
    print("Вы ввели не число,введите еще раз!");
    num2 = double.tryParse(stdin.readLineSync() ?? "") ?? '';
  } 

  var result;

  if (num1 is num && num2 is num) {
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
