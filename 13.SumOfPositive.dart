/**
 *  Title: Count the divisors of a number [7 kyu]
 *  link: https://www.codewars.com/kata/5715eaedb436cf5606000381/
 */

void main() {
  print(positiveSum([1, 1, -1, 1]));
}

int positiveSum(List<int> arr) => arr.fold(0, (a, b) => b.isNegative ? a + 0 : a + b);