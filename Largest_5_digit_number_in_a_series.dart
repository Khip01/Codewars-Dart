/* 
  Title : Largest 5 digit number in a series (7 kyu)
  link : https://www.codewars.com/kata/51675d17e0c1bed195000001/train/dart
*/

void main() {
  print(solution("731674765"));
  // print(getMaximumNum("74765", "73167"));
}

int solution(String digits) {
  int result = int.parse(digits.substring(0, 4));
  for (var i = 0; i < digits.length - 4; i++) {
    String tempNum = "";
    for (var j = 0; j < 5; j++) {
      tempNum += digits[i + j];
    }
    result = int.parse(tempNum) > result ? int.parse(tempNum) : result;
  }
  return result;
}

// Testing max syntax
// int getMaximumNum(String num1, String num2) {
//   // return int.parse(num1) > int.parse(num2) ? int.parse(num1) : int.parse(num1);
//   return max(int.parse(num1), int.parse(num2));
// }


// SIMPLE ANSWER

// import 'dart:math';
// int solution(String digits) {
//   return (digits.length <= 5) ? int.parse(digits) : max(int.parse(digits.substring(0, 5)), solution(digits.substring(1)));
// }