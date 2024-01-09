/**
 *  Title: Consecutive strings
 *  link: https://www.codewars.com/kata/56a5d994ac971f1ac500003e/train/dart
 */

void main() {
  print(longestConsec(['zone', 'abigail', 'theta', 'form', 'libe', 'zas'], 2));
}

String longestConsec(strarr, k) {
  if (strarr.length == 0 || k > strarr.length || k <= 0)
    return "";
  else {
    String strResult = strarr.take(k).join(""), strTemp = "";
    for (var i = 1; i <= strarr.length - k; i++) {
      strTemp = strarr.skip(i).take(k).join("");
      strResult.length >= strTemp.length ? strResult = strResult : strResult = strTemp;
    }
    return strResult;
  }
}


// longestConsec(longestConsect(), 3)//