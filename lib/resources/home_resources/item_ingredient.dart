import 'package:flutter/material.dart';
import 'package:foodapp/widget/common/common_size.dart';

Widget ingredienItem(
    ingredients1,
    ingredients2,
    ingredients3,
    ingredients4,
    ingredients5,
    ingredients6,
    ingredients7,
    ingredients8,
    ingredients9,
    ingredients10,
    ingredients11,
    ingredients12,
    ingredients13,
    ingredients14,
    ingredients15,
    ingredients16,
    ingredients17,
    ingredients18,
    ingredients19,
    ingredients20,
    context) {
  return Container(
    margin: EdgeInsets.only(left: 30, right: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Ingredients",
          style: Theme.of(context).textTheme.headline4,
        ),
        hSpace(15),
        ingredients1.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients1,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients2.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients2,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients3.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients3,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients4.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients4,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients5.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients5,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients6.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients6,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients7.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients7,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients8.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients8,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients9.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients9,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients10.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients10,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients11.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients11,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients12.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients12,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients13.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients13,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients14.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients14,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients15.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients15,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients16.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients16,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients17.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients17,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients18.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients18,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients19.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients19,
                style: Theme.of(context).textTheme.headline6,
              ),
        ingredients20.isEmpty
            ? hSpace(0)
            : Text(
                "- " + ingredients20,
                style: Theme.of(context).textTheme.headline6,
              ),
      ],
    ),
  );
}
