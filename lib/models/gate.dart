import 'package:logic_gates/models/node.dart';

enum GateType {
  and,
  or,
}

class Gate extends Node {
  Gate({required this.gateType});

  final GateType gateType;

  bool _and() {
    for (final node in previous) {
      if (!node.evaluate()) {
        return false;
      }
    }

    return true;
  }

  bool _or() {
    for (final node in previous) {
      if (node.evaluate()) {
        return true;
      }
    }

    return false;
  }

  @override
  bool evaluate() {
    switch (gateType) {
      case GateType.and:
        return _and();
      case GateType.or:
        return _or();
    }
  }
}
