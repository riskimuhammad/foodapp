import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/resources/theme_resource/theme_resource.dart';

import 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc(ThemeData initialState) : super(initialState);

  @override
  Stream<ThemeData> mapEventToState(ThemeEvent event) async* {
    yield appThemeData[event];
  }
}
