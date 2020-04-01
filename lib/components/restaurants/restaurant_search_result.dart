import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantSearchResult extends StatelessWidget {
  final _size = 72.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _restaurantInfo(),
          _addButton(),
        ],
      ),
    );
  }

  _restaurantInfo() {
    return Row(
      children: <Widget>[
        Image(
          width: _size,
          height: _size,
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/hiraganakan.jpg', // TODO: replace with real image
          ),
        ),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'キッチンゴリラ',
              style: TextStyle(fontSize: 20),
            ),
            Text('洋食')
          ],
        ),
      ],
    );
  }

  _addButton() {
    return FlatButton(
      onPressed: () {},
      child: Column(
        children: <Widget>[
          Icon(Icons.add),
          Text(
            'CAMPHOR-\nに追加',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
