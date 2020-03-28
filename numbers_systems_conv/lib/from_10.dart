import 'alphabet.dart'; /*Файл с ассоциативными списками для замены чисел на буквы и наоборот, а также с функцией возводящей в сепень
                          (File with associative lists for exchange numbers by letters and vice versa and also with function that exponentiate numbers)*/

from_10(num_10, num_sys_end, num_2, output) {
  for (int i = 0; true; i++) {
    var ost = num_10 % num_sys_end; //Остаток от деления (Remainder of the division)
    num_10 = num_10 ~/ num_sys_end; //Отсечение лишней части (Excess clipping)
    var cr;
    if (ost > 9) {
      cr = alphabet(ost);
    } //Отправка в метод в файле "alphabet.dart" для замены чисел больше 9 на буквы (Sending in function in file "alphabet.dart" for exchanging numbers above 9 by letters)
    if (cr == null) {
      num_2.insert(0, ost);
    } //Для последней цифры, если она была полдучена из буквы (For last figure, if it was gotten by exchanging of letter )
    else {
      num_2.insert(0, cr);
    } //Для последней цифры, если она не была полдучена из буквы (For last figure, if it wasn't gotten by exchanging of letter )
    if (num_10 < num_sys_end && num_10 > 9) {
      ost = num_10;
      var cr = alphabet(ost);
      num_2.insert(0, cr);
      break;
    } //Проверка на то, что последний остаток от деления может быть больше 9 (Checking that the final remainder of a division can be above 9)
    else if (num_10 < num_sys_end) {
      num_2.insert(0, num_10);
      break;
    } //Сценарий на случай если последний остаток от деления не больше 9 (Script if the final remainder of a division is under 10)
  } //Формирование ответа в виде списка (Creating answer in list)
  for (int i = 0; i <  num_2.length; i++) {
    output += num_2[i].toString();
  } //Формирование ответа в виде String переменной (Creating answer in String variable)
  return output; //Взврат ответа в "main.dart" в виде переменой "finish_variable" (Returning answer in "main.dart" in variable "finish_variable")
}
