import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // para obtener un valor con un solo decimal, correctamente redondeado
  // y asignarlo a un string, se puede usar:
  // double.parse(_value.toStringAsFixed(1));
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    _reset();
                  },
                  icon: const Icon(Icons.refresh),
                  key: const Key('Refresh')),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                W1(
                  value: value,
                  onAdd: adddecimal,
                  onSub: subdecimal,
                ),
                W2(
                  value: value,
                ),
                W3(value: value, onAdd: add, onSub: sub),
              ],
            ),
          ),
        ],
      )),
    );
  }

  void _reset() {
    value = 0;
    setState(() {});
  }

  void adddecimal() {
    value += 0.1;
    setState(() {});
  }

  void subdecimal() {
    value -= 0.1;
    setState(() {});
  }

  void add() {
    value += 1;
    setState(() {});
  }

  void sub() {
    value -= 1;
    setState(() {});
  }
}
