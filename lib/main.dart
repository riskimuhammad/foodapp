import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/core/bloc/meal/meal_bloc.dart';
import 'package:foodapp/core/bloc/theme/theme_bloc.dart';
import 'package:foodapp/core/bloc/theme/theme_event.dart';
import 'package:foodapp/core/data/moor_database.dart';
import 'package:foodapp/core/repo/meal_repo.dart';
import 'package:foodapp/widget/bottom_nav/navigator_page.dart';
import 'package:foodapp/resources/modular/modular_nav.dart';
import 'package:foodapp/resources/theme_resource/theme_resource.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'core/repo/meal_repo.dart';

void main() {
  runApp(
    ModularApp(
      child: FoodApp(),
      module: AppModule(),
    ),
  );
}

class FoodApp extends StatelessWidget {
  const FoodApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ThemeBloc(appThemeData[ThemeEvent.toEvent]),
        ),
        BlocProvider(
          create: (_) => MealBloc(repository: FoodRepositoryImpl()),
        ),
      ],
      child: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
      builder: (context, state) {
        return Provider(
          create: (context) => AppDatabase(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Food Application",
            home: BottomNavigatorPage(),
            theme: state,
          ).modular(),
        );
      },
    );
  }
}
