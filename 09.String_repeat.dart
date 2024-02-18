/**
 *  Title: String repeat [8 kyu]
 *  link: https://www.codewars.com/kata/57a0e5c372292dd76d000d7e/
 */

void main() {
  print(repeatString(6, "I"));
}

String repeatString(int n, String s) => (n == 0) ? "" : s + repeatString(n - 1, s);
