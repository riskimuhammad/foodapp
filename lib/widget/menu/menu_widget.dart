import 'package:flutter/material.dart';
import 'package:foodapp/widget/common/common_size.dart';
import 'package:foodapp/widget/menu/model/item_menu_modeling.dart';
import 'package:foodapp/widget/menu/model/title_modeling.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 193,
      width: widthScreen,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [TitleModeling(), hSpace(20), ItemMenu()],
      ),
    );
  }
}
