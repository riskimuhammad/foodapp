import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/core/model/meal_model.dart';
import 'package:foodapp/resources/home_resources/item_ontap.dart';
import 'package:foodapp/widget/color/color.dart';
import 'package:foodapp/widget/common/common_size.dart';

class ProdukListItem extends StatelessWidget {
  List<Meals> meals;
  ProdukListItem({Key key, this.meals}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mycontext = context;
    return Scaffold(
      body: Container(
        height: heightScreen,
        width: widthScreen,
        child: Column(
          children: [
            Container(
              width: widthScreen,
              height: 60,
              padding: EdgeInsets.only(bottom: 20),
              margin: EdgeInsets.only(left: 20, top: 50),
              child: Row(
                children: [
                  Text(
                    "All Meals",
                    style: Theme.of(context).textTheme.headline1,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: meals.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Hero(
                        tag: meals[index].idMeal,
                        child: Material(
                          color: transparant,
                          child: InkWell(
                            onTap: () => onTaop(meals, index, context),
                            child: Container(
                              height: 150,
                              margin: EdgeInsets.only(
                                  left: 20, right: 20, bottom: 10),
                              width: widthScreen,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: wColor),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10)),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  meals[index].strMealThumb),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 150,
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                meals[index].strMeal,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline5,
                                              ),
                                              Text(
                                                meals[index].strTags == null
                                                    ? "Food Categories"
                                                    : meals[index].strTags,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6,
                                              ),
                                              Text(
                                                meals[index].strCategory,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Detail",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline4,
                                              ),
                                              InkWell(
                                                  onTap: () => onTaop(
                                                      meals, index, context),
                                                  child: FaIcon(FontAwesomeIcons
                                                      .longArrowAltRight)),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
