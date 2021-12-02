import 'package:flutter/material.dart';
import 'package:foodapp/widget/common/common_size.dart';

Widget itemIntruction(context, intructions) {
  return Container(
    margin: EdgeInsets.only(left: 30, top: 20, right: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Instructions",
          style: Theme.of(context).textTheme.headline4,
        ),
        hSpace(10),
        intructions == ""
            ? hSpace(0)
            : Text(
                intructions,
                style: Theme.of(context).textTheme.headline6,
              ),
      ],
    ),
  );
}
