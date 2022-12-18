import 'package:logic_gates/models/circuit.dart';
import 'package:logic_gates/models/gate.dart';
import 'package:logic_gates/models/input.dart';
import 'package:logic_gates/models/output.dart';
import 'package:test/test.dart';

void main() {
  test('0 - true', () {
    final i0 = Input(state: true);

    final o0 = Output();

    i0.addNext(o0);

    final circuit = Circuit(inputs: [i0], outputs: [o0]);

    expect(circuit.evaluate(), [true]);
  });

  test('1 - false', () {
    final i0 = Input(state: false);

    final o0 = Output();

    i0.addNext(o0);

    final circuit = Circuit(inputs: [i0], outputs: [o0]);

    expect(circuit.evaluate(), [false]);
  });

  test('2 - false or false', () {
    final i0 = Input(state: false);
    final i1 = Input(state: false);

    final g0 = Gate(gateType: GateType.or);

    i0.addNext(g0);
    i1.addNext(g0);

    final o0 = Output();

    g0.addNext(o0);

    final circuit = Circuit(inputs: [i0, i1], outputs: [o0]);

    expect(circuit.evaluate(), [false]);
  });

  test('3 - false or true', () {
    final i0 = Input(state: false);
    final i1 = Input(state: true);

    final g0 = Gate(gateType: GateType.or);

    i0.addNext(g0);
    i1.addNext(g0);

    final o0 = Output();

    g0.addNext(o0);

    final circuit = Circuit(inputs: [i0, i1], outputs: [o0]);

    expect(circuit.evaluate(), [true]);
  });

  test('4 - true or false', () {
    final i0 = Input(state: true);
    final i1 = Input(state: false);

    final g0 = Gate(gateType: GateType.or);

    i0.addNext(g0);
    i1.addNext(g0);

    final o0 = Output();

    g0.addNext(o0);

    final circuit = Circuit(inputs: [i0, i1], outputs: [o0]);

    expect(circuit.evaluate(), [true]);
  });

  test('5 - true or true', () {
    final i0 = Input(state: true);
    final i1 = Input(state: true);

    final g0 = Gate(gateType: GateType.or);

    i0.addNext(g0);
    i1.addNext(g0);

    final o0 = Output();

    g0.addNext(o0);

    final circuit = Circuit(inputs: [i0, i1], outputs: [o0]);

    expect(circuit.evaluate(), [true]);
  });

  test('6 - false, false', () {
    final i0 = Input(state: false);

    final o0 = Output();
    final o1 = Output();

    i0.addNext(o0);
    i0.addNext(o1);

    final circuit = Circuit(inputs: [i0], outputs: [o0, o1]);

    expect(circuit.evaluate(), [false, false]);
  });

  test('7 - true, true', () {
    final i0 = Input(state: true);

    final o0 = Output();
    final o1 = Output();

    i0.addNext(o0);
    i0.addNext(o1);

    final circuit = Circuit(inputs: [i0], outputs: [o0, o1]);

    expect(circuit.evaluate(), [true, true]);
  });
}
