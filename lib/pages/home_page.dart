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

  AppBar _appBar(BuildContext context) {
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
        _profileButton(),
      ],
    );
  }

  FlatButton _profileButton() {
    final double _size = 36;

    return FlatButton(
      onPressed: null, // TODO: implements this
      child: _circledImage(
          image: AssetImage(
            'assets/images/home_icon_mock.jpg', // TODO: replace with real image
          ),
          size: _size),
    );
  }

  Container _circledImage({
    @required ImageProvider image,
    double size = 36,
  }) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: image,
        ),
      ),
    );
  }
}
