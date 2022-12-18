import 'package:logic_gates/models/gate.dart';

abstract class Node {
  final List<Node> next = [];
  final List<Node> previous = [];

  void addNext(Node node) {
    next.add(node);
    node.previous.add(this);
  }

  bool evaluate() {
    throw 'Missing implementation.';
  }
}
