import 'package:flutter/material.dart';
import 'package:foodapp/core/model/meal_model.dart';

import 'package:foodapp/widget/produk/model/card_produk_item_menu_modeling.dart';
import 'package:foodapp/widget/produk/model/top_title_produk_menu_modeling.dart';

class ProdukWidget extends StatelessWidget {
  List<Meals> meals;
  ProdukWidget({Key key, @required this.meals}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
            TopTitleProdukMenu(
              meals: meals,
            ),
            CardProdukMenuItem(
              meals: meals,
            )
          ],
        ),
      ),
    );
  }
}
