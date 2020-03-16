import 'package:flutter/cupertino.dart';
import 'package:goyotashi_client/components/restaurants/restaurant.dart';

class RestaurantsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Restaurant(),
      ],
    );
  }
}
