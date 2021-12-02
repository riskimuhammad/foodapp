import 'package:flutter/material.dart';

Widget hSpace(double size) {
  return SizedBox(
    height: size,
  );
}

Widget wSpace(double size) {
  return SizedBox(
    width: size,
  );
}

@override
BuildContext mycontext;
final heightScreen = MediaQuery.of(mycontext).size.height;
final widthScreen = MediaQuery.of(mycontext).size.width;
