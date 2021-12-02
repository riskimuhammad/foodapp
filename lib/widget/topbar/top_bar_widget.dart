import 'package:flutter/material.dart';

import 'package:foodapp/widget/common/common_size.dart';
import 'package:foodapp/widget/topbar/model/circular_photo_profile_modeling.dart';
import 'package:foodapp/widget/topbar/model/notification_top_bar_modeling.dart';

class TopBarWidget extends StatefulWidget {
  const TopBarWidget({Key key}) : super(key: key);

  @override
  _TopBarWidgetState createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget> {
  TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(bottom: 30),
        height: 80,
        width: widthScreen,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircularPhotoProfile(),
            wSpace(20),
            NotificationModeling(),
          ],
        ),
      ),
    );
  }
}
