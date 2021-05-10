import 'package:burned_annotation/burned_annotation.dart';

import 'nested_test.dart';

part 'test.g.dart';

@burnedEntity
abstract class Test with _$Test {
  final String value1;

  final int? value2;

  final NestedTest nested;

  Test(this.value1, this.nested, {this.value2});
}
