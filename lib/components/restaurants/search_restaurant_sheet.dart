import 'package:flutter/material.dart';
import 'package:goyotashi_client/components/restaurants/restaurant_search_result.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class SearchRestaurantSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _background(context),
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
              header: _header(context),
              content: _content(context),
            ),
          ],
        ),
      ],
    );
  }

  _background(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xaaC4C4C4),
    );
  }

  _header(context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text('お店を追加', style: TextStyle(fontSize: 30)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: <Widget>[
                Expanded(child: TextField()),
                FlatButton(
                  onPressed: () {},
                  child: Icon(Icons.search),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _content(context) {
    return ConstrainedBox(
      constraints:
          BoxConstraints(minHeight: MediaQuery.of(context).size.height - 50),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: _searchResults(),
      ),
    );
  }

  _searchResults() {
    return Column(
      children: <Widget>[
        RestaurantSearchResult(),
        RestaurantSearchResult(),
        RestaurantSearchResult(),
        RestaurantSearchResult(),
        RestaurantSearchResult(),
        RestaurantSearchResult(),
      ],
    );
  }
}
