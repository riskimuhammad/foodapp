import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/widget/color/color.dart';

class NotificationModeling extends StatelessWidget {
  const NotificationModeling({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: transparant,
      hoverColor: transparant,
      focusColor: transparant,
      highlightColor: transparant,
      child: Container(
        height: 40,
        width: 40,
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 30),
        decoration: BoxDecoration(
          color: pColor,
          shape: BoxShape.circle,
        ),
        child: FaIcon(
          FontAwesomeIcons.bell,
          color: iconColorWhite,
          size: 20,
        ),
      ),
    );
  }
}
