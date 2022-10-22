import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dice')),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

String getNum() {
  int val = Random().nextInt(6) + 1;
  return '$val';
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var s1 = '1';
  var s2 = '1';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      s1 = getNum();
                      s2 = getNum();
                    });
                    if (kDebugMode) {
                      print('Left');
                    }
                  },
                  child: Image.asset('images/dice$s1.png'))),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    s1 = getNum();
                    s2 = getNum();
                  });
                  if (kDebugMode) {
                    print('Right $s1 $s2');
                  }
                },
                child: Image.asset('images/dice$s2.png')),
          ),
        ],
      ),
    );
  }
}
