import 'package:flutter/material.dart';

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
     Color _colorFromHex(String hexColor) {
      final hexCode = hexColor.replaceAll('#', '');
      return Color(int.parse('FF$hexCode', radix: 16));
    }
    Color color2 = _colorFromHex("#f78ae0");
    return Scaffold(
      appBar: AppBar(
        title: Text("METEO FLUTTER"),
      ),
      body: Center(
        child:FlatButton(
          onPressed: (){
           print("hello");
          },
          child: Text('clikc me'),
          color:color2
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("coucou");
        },
        child: Text('valider'),
        backgroundColor: Colors.red,
        hoverColor: Colors.amberAccent,
        tooltip: "Clik me",
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,

    );
  }
}
