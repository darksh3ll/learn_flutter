import 'package:flutter/material.dart';
import 'BlueBox.dart';
class ListBox extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
          BlueBox(),
        ],
      ),
    );
  }
}