import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF3D167),
        centerTitle: true,
        title: Text(
          'goyotashi',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Text('Hello World!'),
    );
  }
}
