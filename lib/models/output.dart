import 'package:logic_gates/models/node.dart';

class Output extends Node {
  @override
  bool evaluate() {
    if (previous.length != 1) {
      throw 'Invalid previous node list.';
    }

    return previous.first.evaluate();
  }
}
