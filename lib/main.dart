import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required String title}) : super(key: key);
  String title = '';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                child: Image.asset('images/flutter.png'),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.amber[200],
                  border: Border.all(
                      style: BorderStyle.solid,
                      width: 10.0,
                      color: Colors.red[900]!),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(30),
                  color: Colors.amber[600],
                  height: 400,
                  width: 200,
                  child: Image.asset('images/flutter.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(30),
                color: Colors.lime,
                height: 200,
                width: 200,
                child: Image.asset('images/flutter.png'),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(30),
                color: Colors.purple[400],
                height: 200,
                width: 200,
                child: Image.asset('images/flutter.png'),
              ),
            ],
          ),
        ));
  }
}
