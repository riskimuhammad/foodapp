import 'package:flutter/material.dart';

class TitleModeling extends StatelessWidget {
  const TitleModeling({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello, Riski",
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            "what do you want to eat ?",
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }
}
