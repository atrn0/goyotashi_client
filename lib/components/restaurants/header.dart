import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.info_outline),
          onPressed: () {}, // TODO: implement this
        ),
        RaisedButton(
          color: Colors.white,
          onPressed: () {}, // TODO: implement this
          child: Row(
            children: <Widget>[
              Text(
                'CAMPHOR-',
                style: TextStyle(fontSize: 20),
              ),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () {}, // TODO: implement this
        ),
      ],
    );
  }
}
