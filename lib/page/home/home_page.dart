import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/core/bloc/meal/meal_bloc.dart';
import 'package:foodapp/core/bloc/meal/meal_event.dart';
import 'package:foodapp/core/bloc/meal/meal_state.dart';
import 'package:foodapp/resources/elements/error.dart';
import 'package:foodapp/resources/elements/list.dart';
import 'package:foodapp/resources/elements/loading.dart';
import 'package:foodapp/widget/common/common_size.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MealBloc _mealBloc;

  @override
  void initState() {
    super.initState();
    _mealBloc = BlocProvider.of<MealBloc>(context);
    _mealBloc.add(FetchFoodEvent());
  }

  @override
  Widget build(BuildContext context) {
    mycontext = context;
    return BlocBuilder<MealBloc, FoodState>(
      builder: (context, state) {
        if (state is FoodInitialState) {
          return buildLoading();
        } else if (state is FoodLoadingState) {
          return buildLoading();
        } else if (state is FoodLoadedState) {
          return buildHintList(state.meals);
        } else if (state is FoodErrorState) {
          return buildError(state.message);
        } else {
          return SizedBox();
        }
      },
    );
  }
}
