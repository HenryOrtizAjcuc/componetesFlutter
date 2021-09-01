import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.minutoneuquen.com/u/fotografias/m/2020/5/25/f850x638-267592_345081_5050.jpg'),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              child: CircleAvatar(
                child: Text('SL'),
                backgroundColor: Colors.brown,
              ))
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://www.publinews.gt/gt/wp-content/uploads/2020/11/jennifer-aniston.png'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 600.0,
        ),
      ),
    );
  }
}
