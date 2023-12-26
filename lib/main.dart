import 'package:flutter/material.dart';
import 'Model/Login.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyForm(),
    );
  }
}
