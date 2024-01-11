/**
 *  Title: Descending Order
 *  link: https://www.codewars.com/kata/5467e4d82edf8bbf40000155
 */

void main() {
  print(descendingOrder(918273));
}

int descendingOrder(n) {
  String nStr = n.toString();
  List<String> sentences = [];
  for (var i = 0; i < n.toString().length; i++) {
    sentences.add(nStr[i]);
  }
  sentences.sort((a, b) => b.compareTo(a));
  return int.parse(sentences.join(""));
}
