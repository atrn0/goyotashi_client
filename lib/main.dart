import 'package:flutter/material.dart';
import 'package:goyotashi_client/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'goyotashi',
      theme: ThemeData(
        primaryColor: Color(0xFFF3D167),
      ),
      home: HomePage(),
    );
  }
}
