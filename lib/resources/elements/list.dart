import 'package:flutter/material.dart';
import 'package:foodapp/core/model/meal_model.dart';
import 'package:foodapp/widget/common/common_size.dart';
import 'package:foodapp/widget/menu/menu_widget.dart';
import 'package:foodapp/widget/produk/produk_widget.dart';
import 'package:foodapp/widget/topbar/top_bar_widget.dart';

Widget buildHintList(
  List<Meals> mealModel,
) {
  return SingleChildScrollView(
    child: Container(
      height: heightScreen - 80,
      width: widthScreen,
      child: Column(
        children: [
          TopBarWidget(),
          MenuWidget(),
          ProdukWidget(
            meals: mealModel,
          ),
        ],
      ),
    ),
  );
}
