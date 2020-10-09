import 'package:flutter/material.dart';

void main() => runApp(MyCalculator());

class MyCalculator extends StatelessWidget {
  const MyCalculator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: buildScaffold(),
    );
  }

  Scaffold buildScaffold() {
    return Scaffold(
      body: buildMainColumn(),
    );
  }

  Center buildMainColumn() {
    return Center(
      child: Column(
        children: [
          Expanded(child: buildResultScreen(), flex: 3),
          Expanded(child: buildKeyboard(), flex: 6),
        ],
      ),
    );
  }

  Column buildKeyboard() {
    return Column(mainAxisSize: MainAxisSize.max, children: [
      myRow('C', '+', '%', '+'),
      myRow('C', '+', '%', '+'),
      myRow('C', '+', '%', '+'),
      myRow('C', '+', '%', '+'),
    ]);
  }

  Container buildResultScreen() {
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Column(
        children: [
          Text("540+3"),
          Text("543"),
        ],
      ),
    ]));
  }
}

Container myButton(String data, {Color color = Colors.deepPurple}) {
  return Container(
    color: color,
    child: Center(
      child: Text(data),
    ),
  );
}

Expanded myRow(String first, String second, String third, String fourth) {
  return Expanded(
    child: Row(
      children: [
        Expanded(
          child: myButton(first),
        ),
        Expanded(
          child: myButton(second),
        ),
        Expanded(
          child: myButton(third),
        ),
        Expanded(
          child: myButton(fourth, color: Colors.blue),
        )
      ],
    ),
  );
}
