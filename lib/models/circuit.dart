import 'package:logic_gates/models/input.dart';
import 'package:logic_gates/models/output.dart';

class Circuit {
  Circuit({
    List<Input>? inputs,
    List<Output>? outputs,
  })  : _inputs = inputs ?? [],
        _outputs = outputs ?? [];

  // TODO: Give inputs a purpose
  late final List<Input> _inputs;
  late final List<Output> _outputs;

  List<bool> evaluate() {
    if (_outputs.isEmpty) {
      return [];
    }

    return _outputs.map((e) => e.evaluate()).toList();
  }
}
