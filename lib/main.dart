import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text(
            "MyCounterApp",
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Нажми "-", чтобы уменьшить',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                CounterWidget(),
                Text(
                  'Нажми "+", чтобы увеличить',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;
  @override
  void initState() {
    _count;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white60,
        border: Border.all(width: 1, color: Colors.white60),
        borderRadius: const BorderRadius.all(
          const Radius.circular(10),
        ),
      ),
      padding: EdgeInsets.all(10),
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                degreeNum();
              });
            },
            icon: Icon(Icons.exposure_minus_1),
            color: Colors.black38,
          ),
          Text(
            '${_count}',
            style: TextStyle(
                color: Colors.black38,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                addNum();
              });
            },
            icon: Icon(Icons.plus_one_outlined),
            color: Colors.black38,
          ),
        ],
      ),
    );
  }

  void degreeNum() {
    if (_count >= 1) {
      _count--;
    }
  }

  void addNum() {
    _count++;
  }
}
