import 'package:burned_annotation/burned_annotation.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    late Awesome awesome;

    setUp(() {
      awesome = Awesome();
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
