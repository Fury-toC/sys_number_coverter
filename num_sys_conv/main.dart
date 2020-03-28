import 'dart:io'; //Библиотека Dart, участвующая в вводе и выводе информации через консоль (Dart library that use for get user input and give output in console)
import 'from_10.dart'; //Файл с конвертацие из 10 системы счисления (File where is defining process of convertation from 10 number system)
import 'to_10.dart'; // Файл с конвертацие в 10 систему счисления (File where is defining process of convertation into 10 number system)


main() {
  Convertation dot = Convertation(); //Создание экземпляра класса (Declaration of instance class)
  dot.num_2 = []; //Список для переворота полученного числа (List for reverse of number)
  stdout.writeln('Enter number for interpretation');
  var num_10 = stdin.readLineSync();//Исходное число (Primary number)
  dot.num_10 = num_10; //Определение для класса (Declaration for class)
  dot.old = dot.num_10; //Сохранение исходного числа (Saving of primary number)
  stdout.writeln('Enter primary number system');
  dot.num_sys_start = int.parse(stdin.readLineSync()); //Исходная система счисления (Primary number system)
  stdout.writeln('Enter final number system');
  dot.num_sys_end = int.parse(stdin.readLineSync()); //Конечная система счисления (Final number system)
  dot.distribution(dot.num_10, dot.num_sys_start, dot.num_sys_end, dot.num_2, dot.output, dot.old); /*Передача всех переменных класса методу класса
                                                                                                      (Sending class's variables to function inside this class)*/
}

class Convertation { //Главный класс (Main class)
  var num_10;
  var old;
  int num_sys_start;
  int num_sys_end;
  List num_2;
  String output = ''; //
  String finish_variable = '';
  /*
  Выше указанный код является частью определения переменных классом
  (Above code is part of definition of class's variables)
   */
  void distribution(num_10, num_sys_start, num_sys_end, num_2, output, old) {
    if (num_sys_start == 10) {
      num_10 = int.parse(num_10);
      finish_variable = from_10(num_10, num_sys_end, num_2, output); //Получение финального числа (Getting of final number)
    } /*Если условное выражение верно, то данные передаютя в функцию находящуюся в файле "from_10.dart", где происходит перевод из 10 системы счисления
        (If condition is right then data is given in function inside of file "from_10.dart" where number is converted from 10 number system into another)*/
    else {
      num_10 = num_10.toString();
      finish_variable = to_10(num_10, num_sys_start, num_sys_end, num_2, output); //Получение финального числа (Getting of final number)
    } /*Если условное выражение не верно, то данные передаютя в функцию находящуюся в файле "from_10.dart", где происходит перевод из 10 системы счисления
        (If condition is false then data is given in function inside of file "to_10.dart" where number is converted into 10 number system)*/
    finish(num_sys_start, num_sys_end, old, finish_variable); //Передача данных для функции отвечающей за вывод (Giving of variables for function that is responsible for output)
  }
  /*
  Функция "distribution" отвечает за распределение переменных по другим функциям
  (Function "distribution" is responsible for distribution of variables to another functions)
   */
  void finish(num_sys_start, num_sys_end, old, finish_variable) {
    stdout.writeln('$num_sys_start -> $num_sys_end; $old -> $finish_variable');
  }
  /*
  Функция "finish" отвечает за оформление финального вывода в консоль
  (Function "finish" is responsible for final output in console)
   */
  }