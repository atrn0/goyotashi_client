import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class SearchRestaurantSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
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
    );
  }
}
