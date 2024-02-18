/**
 *  Title: Convert a String to a Number! [8 kyu]
 *  link: https://www.codewars.com/kata/544675c6f971f7399a000e79/
 */

void main() {
  print(stringToNumber("1234"));
}

int stringToNumber(String s) => int.parse(s);
