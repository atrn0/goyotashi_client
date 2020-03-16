import 'package:flutter/cupertino.dart';

class Restaurant extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                child: _restaurantImage(),
              );
            },
            itemCount: 3,
          ),
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
