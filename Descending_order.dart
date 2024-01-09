void main() {
  print(descendingOrder(918273));

  int input = 2183;
  var digitsArr = input.toString().split('');
  print(digitsArr);
  digitsArr.sort((b, a) => a.compareTo(b));
  print(int.parse(digitsArr.join('')));
}

int descendingOrder(int n) {
  String nStr = n.toString();
  List<String> sentences = [];
  for (var i = 0; i < n.toString().length; i++) {
    sentences.add(nStr[i]);
  }
  sentences.sort((a, b) => b.compareTo(a));
  return int.parse(sentences.join(""));
}
