import 'alphabet.dart'; /*Файл с ассоциативными списками для замены чисел на буквы и наоборот, а также с функцией возводящей в сепень
                          (File with associative lists for exchange numbers by letters and vice versa and also with function that exponentiate numbers)*/
import 'from_10.dart'; //Файл с конвертацие из 10 системы счисления (File where is defining process of convertation from 10 number system)

to_10(num_10, num_sys_start, num_sys_end, num_2, output) {
  var reverse_num_10 = ''; //Создание переменной для переворота исходного числа (Creating variable for reversing primary number)
  int sum = 0; //Переменная для возврата результата (Variable for returning of result)
  var trash; //Временное пристанище изменённых чисел, у которых писутствует буквенная часть
  int trash2; //Переменная для попытки перевести "trash" в integer (Variable for trying to convert "trash" to integer)
  for (int i = 0; i < num_10.toString().length; i++) {
    num_2.insert(0, num_10[i]);
  } //Посимвольный разворот числа в массиве (Symbol reversing of number in list)
  for (int i = 0; i < num_10.toString().length; i++) {
    reverse_num_10 += num_2[i];
  } //Создание перевернутого числа в String переменной (Creating reversed number in String variable)
  for (int  i = 0; i < reverse_num_10.length; i++) {
    trash = reverse_num_10[i];
    try {
      trash2 = int.parse(trash);
    } //Попытка перевести "trash" в integer (Trying to convert "trash" in integer)
    on FormatException {
      trash2 = alt_alphabet(trash);
    } //Альтернатиный вариант на случай если число имеет буквенную часть (Alternative way if number has figure or figures inside)
    sum += trash2 * exponentiation(num_sys_start, i);
  } //Формирование результата (Creating of result)
  if (num_sys_end == 10) {
    output = sum.toString();
    return output;
  } //Проверка на конечность результата (Checking of final result)
  else {
    int num_10 = sum;
    num_2.clear();
    return from_10(num_10, num_sys_end, num_2, output);
  } //Если конвертация не закончена (If converting isn't finished)
}