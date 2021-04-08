import 'dart:math' show pi;

import 'package:flutter_test/flutter_test.dart';
import 'package:num_to_fraction/num_to_fraction.dart';

void main() {
  test('Should must be equal', () {
    final n2f = NumToFraction();

    expect(n2f.num2fraction(0), '0');
    expect(n2f.num2fraction(0.2), '1/5');
    expect(n2f.num2fraction(1.1), '11/10');
    expect(n2f.num2fraction(-1.1), '-11/10');
    expect(n2f.num2fraction(1.2), '6/5');
    expect(n2f.num2fraction(1.3), '13/10');
    expect(n2f.num2fraction(1.4), '7/5');
    expect(n2f.num2fraction(1.5), '3/2');
    expect(n2f.num2fraction(2), '2/1');
    expect(n2f.num2fraction(2.1), '21/10');
    expect(n2f.num2fraction(3), '3/1');
    expect(n2f.num2fraction(2.555), '511/200');
    expect(n2f.num2fraction(8.36), '209/25');
    expect(n2f.num2fraction(-8.36), '-209/25');
    expect(n2f.num2fraction('0'), '0');
    expect(n2f.num2fraction('.2'), '1/5');
    expect(n2f.num2fraction('1.1'), '11/10');
    expect(n2f.num2fraction('-1.1'), '-11/10');
    expect(n2f.num2fraction('8.36'), '209/25');
    expect(n2f.num2fraction(1 / 3), '1/3');
    expect(n2f.num2fraction(2 / 3), '2/3');
    expect(n2f.num2fraction(1 / 9), '1/9');
    expect(n2f.num2fraction(2 / 9), '2/9');
    expect(n2f.num2fraction(4 / 9), '4/9');
    expect(n2f.num2fraction(5 / 9), '5/9');
    expect(n2f.num2fraction(7 / 9), '7/9');
    expect(n2f.num2fraction(8 / 9), '8/9');
    expect(n2f.num2fraction((2 * pi / 3) / pi), '2/3');
    expect(n2f.num2fraction((8 * 5) / (4 / 2)), '20/1');
    expect(n2f.num2fraction(512 / 999), '512/999');
    expect(n2f.num2fraction(5122 / 9999), '5122/9999');
    expect(n2f.num2fraction(5152 / 9999), '5152/9999');
    expect(n2f.num2fraction(6152 / 9999), '6152/9999');
    expect(n2f.num2fraction(1714 / 3333), '1714/3333');
    expect(n2f.num2fraction(17141 / 33333), '17141/33333');
    expect(n2f.num2fraction(17146 / 99999), '17146/99999');
    expect(n2f.num2fraction(99998 / 99999), '99998/99999');
    expect(() => n2f.num2fraction(null), throwsNoSuchMethodError);
  });
}
