import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("ENTREZ"),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        )
      ),
    );
  }
}
