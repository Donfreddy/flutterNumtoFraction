# num_to_fraction

Convert Number to Fraction for flutter

## Usage

A simple usage example:

```dart
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
  print(fraction.num2fraction((8 * 5) / (4 / 2)));
  // => 20/1
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/Donfreddy/flutterNumtoFraction/issues

## License

Copyright © 2021-present, Don Freddy. Released under the [MIT License](LICENSE).
