import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext) {
    return Container(
      color: Color.fromARGB(255, 37, 221, 228),
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            height: 70.0,
          ),
        ],
      ),
    );
    const Text(
      "Rapi Maulana",
      style: TextStyle(color: Colors.white, fontSize: 20),
    );
    const Text(
      "20551011179",
      style: TextStyle(color: Colors.white, fontSize: 15),
    );
  }
}
