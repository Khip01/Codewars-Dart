/**
 *  Title: Triangular Treasure
 *  link: https://www.codewars.com/kata/525e5a1cb735154b320002c8
 */

void main() {
  print(triangular(5));
}

// StackOverflow Issue
// triangular(n) {
//   return n == 0 ? 0 : n < 0 ? n * 0 : n + triangular(n - 1);
// }

// triangular(n) {
//   if (n <= 0) return 0;
//   else {
//     List<int> temp = List.generate(n, (n) => n+1, growable: true);
//     int result = 0;
//     for (int i in temp) {
//       result += temp[i-1];
//     }
//     return result;
//   }
// }

triangular(n) {
  int result = 0;
  for (var i = 1; i <= n; i++) {
    result += i;
  }
  return result;
}

/**
 * 1 = 1
 * *
 * 
 * 2 = 3
 * **
 * *
 * 
 * 3 = 6
 * ***
 * **
 * *
 * 
 * 4 = 10
 * ****
 * ***
 * **
 * *
 * 
 * 5 = 15
 * *****
 * ****
 * ***
 * **
 * *
 */