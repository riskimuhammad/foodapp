import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/resources/home_resources/item_ingredient.dart';
import 'package:foodapp/resources/home_resources/item_intruction.dart';
import 'package:foodapp/widget/color/color.dart';
import 'package:foodapp/widget/common/common_size.dart';

class HeroProduk extends StatelessWidget {
  String idMeals,
      image,
      name,
      categori,
      tags,
      intructions,
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
      ingredients20;
  HeroProduk(
      {Key key,
      @required this.idMeals,
      this.categori,
      this.image,
      this.name,
      this.tags,
      this.intructions,
      this.ingredients1,
      this.ingredients2,
      this.ingredients3,
      this.ingredients4,
      this.ingredients10,
      this.ingredients11,
      this.ingredients15,
      this.ingredients12,
      this.ingredients13,
      this.ingredients14,
      this.ingredients16,
      this.ingredients17,
      this.ingredients18,
      this.ingredients19,
      this.ingredients20,
      this.ingredients5,
      this.ingredients6,
      this.ingredients7,
      this.ingredients8,
      this.ingredients9})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: idMeals,
      child: Material(
        color: Colors.white,
        child: Container(
          height: heightScreen,
          width: widthScreen,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 400,
                  width: widthScreen,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(image), fit: BoxFit.cover)),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, bottom: 30),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [
                            0.1,
                            0.3,
                            0.4,
                            1
                          ],
                          colors: [
                            Colors.black.withOpacity(.1),
                            Colors.black.withOpacity(.1),
                            Colors.white.withOpacity(.1),
                            Colors.white.withOpacity(.1),
                          ]),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  icon: FaIcon(
                                    FontAwesomeIcons.longArrowAltLeft,
                                    color: wColor,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                              IconButton(
                                  icon: FaIcon(
                                    FontAwesomeIcons.heart,
                                    color: pColor,
                                  ),
                                  onPressed: () {}),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text(
                              categori,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            Text(
                              tags == "" ? "Food Categories" : tags,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                hSpace(20),
                ingredienItem(
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
                    context),
                itemIntruction(context, intructions),
                hSpace(20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
