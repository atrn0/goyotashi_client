import 'package:flutter/cupertino.dart';

class RestaurantSearchResult extends StatelessWidget {
  final _size = 72.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: <Widget>[
          Image(
            width: _size,
            height: _size,
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/hiraganakan.jpg', // TODO: replace with real image
            ),
          ),
        ],
      ),
    );
  }
}
