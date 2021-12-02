import 'dart:convert';

import 'package:foodapp/core/model/meal_model.dart';
import 'package:dio/dio.dart';

abstract class FoodRepository {
  Future<List<dynamic>> getFood();
}

class FoodRepositoryImpl extends FoodRepository {
  @override
  Future<List<dynamic>> getFood() async {
    final baseUrl = "https://www.themealdb.com/api/json/v1/1/search.php?";

    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
    );
    var response = await Dio(options).get("f=c");
    if (response.statusCode == 200) {
      String data = jsonEncode(response.data);
      List<Meals> meals = Food.fromJson(jsonDecode(data)).meals;

      return meals;
    } else {
      throw Exception('failde');
    }
  }
}
