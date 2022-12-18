import 'package:logic_gates/models/circuit.dart';
import 'package:logic_gates/models/input.dart';
import 'package:logic_gates/models/output.dart';

void main(List<String> arguments) {
  final i0 = Input(state: true);

  final o0 = Output();
  final o1 = Output();

  i0.addNext(o0);
  i0.addNext(o1);

  final circuit = Circuit(inputs: [i0], outputs: [o0, o1]);

  print(circuit.evaluate());
}
