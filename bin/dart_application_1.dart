


import 'dart:io';

void main() {
  print("Введите первое число");
  num num1 = double.tryParse(stdin.readLineSync() ?? "") ?? -12312312321311;
  if(num1==-12312312321311){
    print("Вы ввели не число,введите еще раз!");
    num1 = double.tryParse(stdin.readLineSync() ?? "") ?? -12312312321311;
  }else{
    
  }
  
  print('Введите операцию (+ - * /)');
  String action = stdin.readLineSync() ?? "";

  print("Введите второе число");
  num num2 = double.tryParse(stdin.readLineSync() ?? "") ?? -12312312321311;
  if(num2==-12312312321311){
    print("Вы ввели не число,введите еще раз!");
    num2 = double.tryParse(stdin.readLineSync() ?? "") ?? -12312312321311;
  }else{
    
  }

  if(num1!=-12312312321311 && num2!=-12312312321311){
      if(action=='+'){
        print(num1+num2);
      }else if(action=='-'){
        print(num1-num2);
      }else if(action=='/'){
        print(num1/num2);
      }else if(action=='*'){
        print(num1*num2);
      }else{
        print("Вы ввели некорректную операцию");
      }
    }else{
      print("Одно из введенных значений не число");
    }
  // print("Введите второе число");


}
