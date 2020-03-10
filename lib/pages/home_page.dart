import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Text('Hello World!'),
    );
  }
}

Widget _appBar(BuildContext context) {
  return AppBar(
    backgroundColor: Theme.of(context).primaryColor,
    centerTitle: true,
    title: Text(
      'goyotashi',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    actions: <Widget>[
      _profileButton(context),
    ],
  );
}

Widget _profileButton(BuildContext context) {
  final double _size = 36;

  return FlatButton(
    onPressed: null, // TODO: implements this
//    child: ClipOval(
//      child:
//      ),
//    ),
    child: Container(
      height: _size,
      width: _size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/home_icon_mock.jpg'))),
    ),
  );
}
