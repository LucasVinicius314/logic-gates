import 'package:logic_gates/models/node.dart';

enum GateType {
  and,
  nand,
  nor,
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

  bool _nand() {
    for (final node in previous) {
      if (!node.evaluate()) {
        return true;
      }
    }

    return false;
  }

  bool _nor() {
    for (final node in previous) {
      if (node.evaluate()) {
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
      case GateType.nand:
        return _nand();
      case GateType.nor:
        return _nor();
      case GateType.or:
        return _or();
    }
  }
}
