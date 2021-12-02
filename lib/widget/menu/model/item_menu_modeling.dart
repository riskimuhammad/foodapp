import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/widget/color/color.dart';
import 'package:foodapp/widget/common/common_size.dart';

class ItemMenu extends StatelessWidget {
  ItemMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: widthScreen,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildItem(
              "Favorite",
              FaIcon(
                FontAwesomeIcons.heart,
                size: 25,
                color: pColor,
              ),
              context),
          _buildItem(
              "Cheap",
              FaIcon(
                FontAwesomeIcons.tag,
                size: 25,
                color: pColor,
              ),
              context),
          _buildItem(
              "Trend",
              FaIcon(
                FontAwesomeIcons.chartLine,
                size: 25,
                color: pColor,
              ),
              context),
          _buildItem(
              "More",
              FaIcon(
                FontAwesomeIcons.ellipsisV,
                size: 25,
                color: pColor,
              ),
              context),
        ],
      ),
    );
  }

  Widget _buildItem(name, icon, context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10, left: 10),
          height: 60,
          width: 60,
          alignment: Alignment.center,
          child: icon,
          decoration: BoxDecoration(
              color: wColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.3),
                  offset: Offset(3, 3),
                  blurRadius: 10,
                )
              ]),
        ),
        hSpace(10),
        Text(
          name,
          style: Theme.of(context).textTheme.headline5,
        )
      ],
    );
  }
}
