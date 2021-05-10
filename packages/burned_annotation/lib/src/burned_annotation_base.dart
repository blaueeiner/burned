import 'package:meta/meta.dart';

class BurnedModel {
  const BurnedModel(this.type);
  final Type type;
}

@immutable
class BurnedEntity {
  const BurnedEntity();
}

const burnedEntity = BurnedEntity();

class Burned {
  const Burned();
}

const burned = Burned();
