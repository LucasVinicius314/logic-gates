import 'package:logic_gates/models/node.dart';

class Input extends Node {
  Input({required this.state});

  final bool state;

  @override
  bool evaluate() {
    return state;
  }
}
