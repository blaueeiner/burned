import 'package:build/build.dart';
import 'package:burned/src/burned_entity_generator.dart';
import 'package:source_gen/source_gen.dart';

/// Builds generators for `build_runner` to run
Builder burned(BuilderOptions options) {
  return SharedPartBuilder(
    [BurnedEntityGenerator()],
    'burned',
  );
}
