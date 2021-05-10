import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:burned_annotation/burned_annotation.dart';
import 'package:source_gen/source_gen.dart';

class BurnedEntityGenerator extends GeneratorForAnnotation<BurnedEntity> {
  @override
  String generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    if (element is! ClassElement) {
      throw InvalidGenerationSourceError(
        '@burned can only be applied on classes. Failing element: ${element.name}',
        element: element,
      );
    }

    final result = StringBuffer();
    result.write('''
    mixin _\$${element.displayName} {
  \$${element.displayName}CopyWith get copyWith;
  
  Map<String, dynamic> toJson();
}

abstract class \$${element.displayName}CopyWith {
''');
    result.write('${element.displayName} call({');

    for (final field in element.fields) {
      result.write('${field.type} ${field.name},');
    }

    result.writeln('});');

    // for (final field in element.fields) {
    // element.result.writeln('// ${annotation.listValue.map((e) => e.type.element)}');
    // field.type;
    // }

    result.writeln('}');

    return result.toString();
  }

  @override
  FutureOr<String> generate(LibraryReader library, BuildStep buildStep) {
    return library.classes.map((e) => e.name).toString();
  }
}
