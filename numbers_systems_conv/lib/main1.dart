import 'from_10.dart'; //Файл с конвертацие из 10 системы счисления (File where is defining process of convertation from 10 number system)
import 'to_10.dart'; // Файл с конвертацие в 10 систему счисления (File where is defining process of convertation into 10 number system)


distribution(num_10, num_sys_start, num_sys_end, num_2, output) {
  if (num_sys_start == 10) {
    num_10 = int.parse(num_10);
    output = from_10(num_10, num_sys_end, num_2, output).toString(); //Получение финального числа (Getting of final number)
  } /*Если условное выражение верно, то данные передаютя в функцию находящуюся в файле "from_10.dart", где происходит перевод из 10 системы счисления
      (If condition is right then data is given in function inside of file "from_10.dart" where number is converted from 10 number system into another)*/
  else {
    num_10 = num_10.toString();
    output = to_10(num_10, num_sys_start, num_sys_end, num_2, output).toString(); //Получение финального числа (Getting of final number)
  } /*Если условное выражение не верно, то данные передаютя в функцию находящуюся в файле "from_10.dart", где происходит перевод из 10 системы счисления
      (If condition is false then data is given in function inside of file "to_10.dart" where number is converted into 10 number system)*/
  return output;
}
  /*
  Функция "distribution" отвечает за распределение переменных по другим функциям
  (Function "distribution" is responsible for distribution of variables to another functions)
   */