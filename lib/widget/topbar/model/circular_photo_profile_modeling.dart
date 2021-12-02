import 'package:flutter/material.dart';
import 'package:foodapp/widget/color/color.dart';

class CircularPhotoProfile extends StatelessWidget {
  const CircularPhotoProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        child: ListTile(
          title: Text(
            "Muhammad Riski",
            style: Theme.of(context).textTheme.headline4,
          ),
          subtitle: Text(
            "riskimuhammad8921@gmail.com",
            style: Theme.of(context).textTheme.headline6,
          ),
          leading: Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(
              left: 10,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: pColor,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://lh3.googleusercontent.com/a-/AOh14GhEROxW8ANIvasvaYWAglPfOG6ue7R06X36u0eRpA=s288-p-rw-no"),
                    fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
