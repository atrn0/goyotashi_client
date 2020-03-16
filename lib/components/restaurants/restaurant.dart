import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Restaurant extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                child: _restaurantImage(),
              );
            },
            itemCount: 10,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'ひらがな館', // TODO: replace with real data
                  style: TextStyle(fontSize: 25),
                ),
                Text('営業中'), // TODO: replace with real data
              ],
            ),
            IconButton(
              onPressed: () {}, // TODO: implement this
              icon: Icon(Icons.map),
            ),
          ],
        ),
      ],
    );
  }

  Widget _restaurantImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image(
        image: AssetImage(
          'assets/hiraganakan.jpg', // TODO: replace with real image
        ),
      ),
    );
  }
}
