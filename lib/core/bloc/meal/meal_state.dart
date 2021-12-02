import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp/core/model/meal_model.dart';

abstract class FoodState extends Equatable {}

class FoodInitialState extends FoodState {
  @override
  List<Object> get props => [];
}

class FoodLoadingState extends FoodState {
  @override
  List<Object> get props => throw [];
}

class FoodLoadedState extends FoodState {
  List<Meals> meals;
  FoodLoadedState({@required this.meals});
  @override
  List<Object> get props => null;
}

class FoodErrorState extends FoodState {
  String message;
  FoodErrorState({@required this.message});
  @override
  List<Object> get props => null;
}
