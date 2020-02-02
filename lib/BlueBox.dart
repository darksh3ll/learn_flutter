import 'package:flutter/material.dart';

class BlueBox extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      width: 400.0,
      alignment: Alignment.center,
      child: Text("Box"),
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}