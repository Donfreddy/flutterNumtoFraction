library num_to_fraction;

class NumToFraction {
  bool _almost(a, b) => (a - b).abs() <= 9.5367432e-7;

  /// Computes the greatest common divisor of two number `a` and `b`,
  /// using the binary GCD algorithm.
  dynamic _gcd(a, b) {
    // Simple cases:
    if (_almost(b, 0)) return a;

    return _gcd(b, a % b);
  }

  dynamic _findPrecision(dynamic n) {
    int e = 1;

    while (!_almost((n * e).round() / e, n)) {
      e *= 10;
    }
    return e;
  }

  /// Convert number to fraction
  ///
  /// Pass in the number value into [nber]
  /// It will return the fraction of number.
  String num2fraction(dynamic nber) {
    if (nber is String) {
      nber = double.tryParse(nber) ?? int.tryParse(nber);
    }

    if (nber == 0) return '0';

    final precision = _findPrecision(nber);
    final number = nber * precision;
    final gcd = (_gcd(number, precision)).abs();

    final numerator = (number / gcd).round();
    final denominator = (precision / gcd).round();

    return '$numerator/$denominator';
  }
}
