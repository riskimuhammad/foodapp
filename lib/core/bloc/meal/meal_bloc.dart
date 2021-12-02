import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/core/model/meal_model.dart';
import 'package:foodapp/core/repo/meal_repo.dart';
import 'meal_event.dart';
import 'meal_state.dart';

class MealBloc extends Bloc<FoodEvent, FoodState> {
  FoodRepository repository;
  MealBloc({@required this.repository}) : super(null);
  FoodState get initialState => FoodInitialState();

  @override
  Stream<FoodState> mapEventToState(FoodEvent event) async* {
    if (event is FetchFoodEvent) {
      yield FoodLoadingState();
      try {
        List<Meals> meals = await repository.getFood();
        yield FoodLoadedState(meals: meals);
      } catch (e) {
        yield FoodErrorState(message: e.toString());
      }
    }
  }
}
