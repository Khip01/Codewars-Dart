/**
 *  Title: Bowling Pins
 *  link: https://www.codewars.com/kata/585cf93f6ad5e0d9bf000010
 */

void main() {
  print(bowling_pins([3, 5, 9]));
}

String bowling_pins(List<int> pins) {
  String result = "";
  int triangle = 7, counter = 7, rowGapNum = 9;
  for (var row = 0; row < 4; row++) {
    // Left Side Space
    if (0 < row) {
      for (var sideSpace = 0; sideSpace < row; sideSpace++) {
        result += " ";
      }
    }
    // Main triangle
    for (var col = 0; col < triangle; col++) {
      if (col % 2 == 0) {
        if (!pins.contains(counter)) result += "I";
        else result += " ";
        counter++;
      } else
        result += " ";
    }
    // Right Side Space
    if (0 < row) {
      for (var sideSpace = 0; sideSpace < row; sideSpace++) {
        result += " ";
      }
    }
    // Prevents placing "\n" after the number 1
    (row < 3) ? result += "\n" : null;
    // Subtraction for triangles
    triangle -= 2;
    // Subtraction to the last number stored in the counter
    counter -= (rowGapNum-=2);
  }
  return result;
}

// My Other Solutions

// String bowling_pins(List<int> pins) {
//   return
//   "${exist(7, pins)} ${exist(8, pins)} ${exist(9, pins)} ${exist(10, pins)}\n" +
//   " ${exist(4, pins)} ${exist(5, pins)} ${exist(6, pins)} \n" +
//   "  ${exist(2, pins)} ${exist(3, pins)}  \n" +
//   "   ${exist(1, pins)}   ";
// }

// String exist(int num, List<int> arr) => arr.contains(num) ? " " : "I";