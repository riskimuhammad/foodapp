import 'package:flutter/material.dart';
import 'package:foodapp/widget/produk/model/hero_produks_models.dart';

onTaop(meals, index, context) {
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => HeroProduk(
                intructions: meals[index].strInstructions == null
                    ? ""
                    : meals[index].strInstructions,
                idMeals: meals[index].idMeal,
                image: meals[index].strMealThumb,
                categori: meals[index].strCategory,
                name: meals[index].strMeal,
                tags: meals[index].strTags == null ? "" : meals[index].strTags,
                ingredients1: meals[index].strIngredient1 == null
                    ? ""
                    : meals[index].strIngredient1,
                ingredients2: meals[index].strIngredient2 == null
                    ? ""
                    : meals[index].strIngredient2,
                ingredients3: meals[index].strIngredient3 == null
                    ? ""
                    : meals[index].strIngredient3,
                ingredients4: meals[index].strIngredient4 == null
                    ? ""
                    : meals[index].strIngredient4,
                ingredients5: meals[index].strIngredient5 == null
                    ? ""
                    : meals[index].strIngredient5,
                ingredients6: meals[index].strIngredient6 == null
                    ? ""
                    : meals[index].strIngredient6,
                ingredients7: meals[index].strIngredient7 == null
                    ? ""
                    : meals[index].strIngredient7,
                ingredients8: meals[index].strIngredient8 == null
                    ? ""
                    : meals[index].strIngredient8,
                ingredients9: meals[index].strIngredient9 == null
                    ? ""
                    : meals[index].strIngredient9,
                ingredients10: meals[index].strIngredient10 == null
                    ? ""
                    : meals[index].strIngredient10,
                ingredients11: meals[index].strIngredient11 == null
                    ? ""
                    : meals[index].strIngredient11,
                ingredients12: meals[index].strIngredient12 == null
                    ? ""
                    : meals[index].strIngredient12,
                ingredients13: meals[index].strIngredient13 == null
                    ? ""
                    : meals[index].strIngredient13,
                ingredients14: meals[index].strIngredient14 == null
                    ? ""
                    : meals[index].strIngredient14,
                ingredients15: meals[index].strIngredient15 == null
                    ? ""
                    : meals[index].strIngredient15,
                ingredients16: meals[index].strIngredient16 == null
                    ? ""
                    : meals[index].strIngredient16,
                ingredients17: meals[index].strIngredient17 == null
                    ? ""
                    : meals[index].strIngredient17,
                ingredients18: meals[index].strIngredient18 == null
                    ? ""
                    : meals[index].strIngredient18,
                ingredients19: meals[index].strIngredient19 == null
                    ? ""
                    : meals[index].strIngredient19,
                ingredients20: meals[index].strIngredient20 == null
                    ? ""
                    : meals[index].strIngredient20,
              )));
}
