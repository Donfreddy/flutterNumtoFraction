library num_to_fraction.example;

import 'dart:math' show pi;

import 'package:num_to_fraction/num_to_fraction.dart';

main() {
  final fraction = NumToFraction();

  print(fraction.num2fraction(0));
  // => 0
  print(fraction.num2fraction(0.2));
  // => 1/5
  print(fraction.num2fraction(1.1));
  // => 11/10
  print(fraction.num2fraction(1.2));
  // => 6/5
  print(fraction.num2fraction(1.3));
  // => 13/10
  print(fraction.num2fraction(1.4));
  // => 7/5
  print(fraction.num2fraction(1.5));
  // => 3/2
  print(fraction.num2fraction(2));
  // => 2/1
  print(fraction.num2fraction(2.1));
  // => 21/10
  print(fraction.num2fraction(3));
  // => 3/1
  print(fraction.num2fraction(2.555));
  // => 511/200
  print(fraction.num2fraction(8.36));
  // => 209/25
  print(fraction.num2fraction(7 / 9));
  // => 7/9
  print(fraction.num2fraction(8 / 9));
  // => 8/9
  print(fraction.num2fraction(512 / 999));
  // => 512/999
  print(fraction.num2fraction((2 * pi / 3) / pi));
  // => 2/3
  print(fraction.num2fraction((8 * 5) / (4 / 2)));
  // => 20/1
}
