import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/core/data/moor_database.dart';
import 'package:foodapp/core/model/meal_model.dart';
import 'package:foodapp/resources/home_resources/item_ontap.dart';
import 'package:foodapp/widget/color/color.dart';
import 'package:foodapp/widget/common/common_size.dart';
import 'package:foodapp/widget/produk/model/hero_produks_models.dart';
import 'package:provider/provider.dart';

class CardProdukMenuItem extends StatelessWidget {
  List<Meals> meals;
  CardProdukMenuItem({Key key, @required this.meals}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);

    return Expanded(
      child: Container(
        width: widthScreen,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Hero(
                tag: meals[index].idMeal,
                child: Material(
                  color: transparant,
                  child: InkWell(
                    onTap: () => onTaop(meals, index, context),
                    child: Container(
                      width: widthScreen - 100,
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(meals[index].strMealThumb),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 15,
                            right: 15,
                            bottom: 15,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              width: widthScreen,
                              decoration: BoxDecoration(
                                  color: wColor,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    meals[index].strMeal,
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                  Text(
                                    meals[index].strTags == null
                                        ? "Food Categories"
                                        : meals[index].strTags,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  Text(
                                    meals[index].strCategory,
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 10,
                              right: 5,
                              child: CircleAvatar(
                                backgroundColor: pColor,
                                child: IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.longArrowAltRight,
                                      color: wColor,
                                      size: 15,
                                    ),
                                    onPressed: () =>
                                        onTaop(meals, index, context)),
                              )),
                          Positioned(
                              top: 10,
                              right: 5,
                              child: CircleAvatar(
                                backgroundColor: pColor,
                                child: IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.heart,
                                      color: wColor,
                                      size: 15,
                                    ),
                                    onPressed: () {
                                      final favorites = FavoriteData(
                                          id: null,
                                          name: meals[index].strMeal,
                                          image: meals[index].strMealThumb,
                                          categories: meals[index].strCategory,
                                          tags: meals[index].strTags,
                                          idMeal: meals[index].idMeal,
                                          completed: true);
                                      database.insertData(favorites);
                                      showDialog(
                                          context: context,
                                          builder: (context) => Dialog(
                                                backgroundColor: transparant,
                                                elevation: 0.0,
                                                child: Container(
                                                  height: 150,
                                                  decoration: BoxDecoration(
                                                      color: wColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "Success Saved",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headline4,
                                                      ),
                                                      ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Text("Ok"))
                                                    ],
                                                  ),
                                                ),
                                              ));
                                    }),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
