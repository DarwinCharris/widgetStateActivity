import 'package:flutter/material.dart';

class W2 extends StatelessWidget {
  final double value;
  const W2({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    double value2 = double.parse(value.toStringAsFixed(1)) -
        double.parse(value.toStringAsFixed(1)).toInt();
    return Container(
      key: const Key('W2'),
      width: 200,
      height: 200,
      color: value2 < 0.4
          ? Colors.blueGrey
          : Colors.red, // should be grey when the decimal is bellow 0.4
    );
  }
}
