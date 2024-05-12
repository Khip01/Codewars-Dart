/**
 *  Title: Sum Arrays [8 kyu]
 *  link: https://www.codewars.com/kata/53dc54212259ed3d4f00071c/
 */

void main() {
  print(sum([1, 1, 1, -1]));
}

num sum(List<num> arr) => arr.fold(0, (a, b) => a + b);
