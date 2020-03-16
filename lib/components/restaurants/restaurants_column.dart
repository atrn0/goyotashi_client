import 'package:flutter/cupertino.dart';
import 'package:goyotashi_client/components/restaurants/restaurant.dart';

class RestaurantsColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Restaurant(),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Restaurant(),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Restaurant(),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Restaurant(),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Restaurant(),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Restaurant(),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Restaurant(),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Restaurant(),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Restaurant(),
        ),
      ],
    );
  }
}
