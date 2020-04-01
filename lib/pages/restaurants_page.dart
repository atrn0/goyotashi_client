import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goyotashi_client/components/restaurants/header.dart';
import 'package:goyotashi_client/components/restaurants/restaurants_column.dart';
import 'package:sticky_headers/sticky_headers.dart';

class RestaurantsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Header(),
              RestaurantsColumn(),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xaaC4C4C4),
          ),
          ListView(
            children: <Widget>[
              SizedBox(height: 50),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                child: Container(height: 40, color: Colors.white),
              ),
              StickyHeader(
                header: Container(
                  padding: EdgeInsets.all(30),
                  width: double.infinity,
                  color: Colors.white,
                  child: Text('hoge'),
                ),
                content: ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height - 50),
                  child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Text('restaurant1'),
                        Text('restaurant1'),
                        Text('restaurant1'),
                        Text('restaurant1'),
                        Text('restaurant1'),
                        Text('restaurant1'),
                        Text('restaurant1'),
                        Text('restaurant1'),
                        Text('restaurant1'),
                        Text('restaurant1'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
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
          'assets/home_icon_mock.jpg', // TODO: replace with real image
        ),
        size: _size,
      ),
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
