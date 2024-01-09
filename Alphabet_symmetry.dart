/**
 *  Title: Alphabet symmetry
 *  link: https://www.codewars.com/kata/59d9ff9f7905dfeed50000b0
 */

void main() {
  print(solve(["abode", "ABc", "xyzD"]));
}

List<int> solve(List<String> arr) {
  return List<int>.generate(arr.length, (int i) {
    int numArr = 0;
    for (var j = 0; j < arr[i].length; j++) {
      (arr[i][j].toLowerCase().codeUnitAt(0)-97 == j) ? ++numArr : null;
    }
    return numArr;
  }, growable: true);
}
