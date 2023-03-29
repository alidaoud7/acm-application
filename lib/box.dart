import 'package:flutter/material.dart';

class Mybox extends StatelessWidget {
  final String child;
  Mybox({required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
          height: 300,
          color: Colors.deepPurple[200],
          child: Center(
              child: Text(
                  child,
                  style: TextStyle(fontSize: 40),
          )),
      ),
    );
  }
}
