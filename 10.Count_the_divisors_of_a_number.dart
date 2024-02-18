import 'Largest_5_digit_number_in_a_series.dart';

/**
 *  Title: Count the divisors of a number [7 kyu]
 *  link: https://www.codewars.com/kata/542c0f198e077084c0000c2e/
 */

void main() {
  print(divisors(12));
}

int divisors(n) {
  int result = 0;
  for (var i = 1; i <= n; i++) if (n % i == 0) result++;
  return result;
}
