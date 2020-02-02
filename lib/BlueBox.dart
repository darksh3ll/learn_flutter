import 'package:flutter/material.dart';

class BlueBox extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 200.0,
      alignment: Alignment.center,
      child: Text("Flutter"),
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}