import 'package:flutter/material.dart';
import 'package:foodapp/core/model/meal_model.dart';
import 'package:foodapp/widget/common/common_size.dart';
import 'package:foodapp/widget/produk/list_all_produk.dart';

class TopTitleProdukMenu extends StatelessWidget {
  List<Meals> meals;

  TopTitleProdukMenu({Key key, @required this.meals}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: widthScreen,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Meals",
            style: Theme.of(context).textTheme.headline2,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProdukListItem(
                              meals: meals,
                            )));
              },
              child: Text(
                "See All",
                style: Theme.of(context).textTheme.subtitle1,
              ))
        ],
      ),
    );
  }
}
