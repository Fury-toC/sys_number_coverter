alphabet(ost) {
  Map<int, String> main_map = {10 : 'A', 11 : 'B', 12 : 'C', 13 : 'D', 14 : 'E', 15 : 'F', 16 : 'G', 17 : 'H', 18 : 'I', 19 : 'J', 20 : 'K', 21 : 'L', 22 : 'M', 23 : 'N', 24 : 'O', 25 : 'P', 26 : 'Q', 27 : 'R', 28 : 'S', 29 : 'T', 30 : 'U', 31 : 'V', 32 : 'W', 33 : 'X', 34 : 'Y', 35 : 'Z'};
  return main_map[ost];
} //Функция заменяющая цифры выше 9 на буквы (Function that exchange figures above 9 by letters)

alt_alphabet(trash) {
  Map<String, int> alt_map = {'A' : 10, 'B' : 11, 'C' : 12, 'D' : 13, 'E' : 14, 'F' : 15, 'G' : 16, 'H' : 17, 'I' : 18, 'J' : 19, 'K' : 20, 'L' : 21, 'M' : 22, 'N' : 23, 'O' : 24, 'P' : 25, 'Q' : 26, 'R' : 27, 'S' : 28, 'T' : 29, 'U' : 30, 'V' : 31, 'W' : 32, 'X' : 33, 'Y' : 34, 'Z' : 35};
  return alt_map[trash];
} //Функция заменяющая буквы на цифры выше 9 (Function that exchange letters by figures above 9)

exponentiation(num_sys_start, i) {
  int result = num_sys_start;
  for (int h = 1; h < i; h++) {
    result *= num_sys_start;
  }
  if (i == 0) {
    result = 1;
  }
  return result;
} //Функция возводящая в степень (Funon that exponentiate numbers)