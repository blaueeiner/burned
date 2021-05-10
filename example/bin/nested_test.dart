import 'package:burned_annotation/burned_annotation.dart';

part 'nested_test.g.dart';

@burnedEntity
abstract class NestedTest with _$NestedTest {
  final String value1;

  final int? value2;

  NestedTest(this.value1, {this.value2});
}
