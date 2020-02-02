import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import "ListBox.dart";
import 'Home.dart';

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
      initialRoute: "/",
     routes: {
       '/': (context) => Home(),
       '/second': (context) => MyHomePage(),
     },
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
  Future<http.Response> getUser() async {
    const url = 'https://jsonplaceholder.typicode.com/users';
    final http.Response response = await http.get(url);
    print(response);
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Text("ScrollView"),
          backgroundColor: Colors.grey[900],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("api"),
              onPressed: () {
                getUser();
              },
            ),
            ListBox(),
            ListBox(),
            ListBox(),
            ListBox(),
            ListBox(),
            ListBox(),
            ListBox(),
            ListBox(),
          ],
        )));
  }
}
