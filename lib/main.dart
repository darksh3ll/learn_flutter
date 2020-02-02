import 'package:flutter/material.dart';
import 'BlueBox.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Text("Music"),
          backgroundColor: Colors.grey[900],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Container(
            child: Row(
              children: <Widget>[
                BlueBox(),
                BlueBox(),
                BlueBox(),
                BlueBox(),
                BlueBox(),
                BlueBox(),
                BlueBox(),
              ],
            ),
          ),

        )
    );
  }
}

