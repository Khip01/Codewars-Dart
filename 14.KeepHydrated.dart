/**
 *  Title: Keep Hydarated [8 kyu]
 *  link: https://www.codewars.com/kata/582cb0224e56e068d800003c/
 */

void main() {
  print(litres(11.8));
}

int litres(num time) => (time / 2).floor();
