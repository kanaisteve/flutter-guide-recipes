import 'package:flutter/material.dart';

import '../widgets/recipe_item.dart';
import '../dummy_data.dart';

class CategoryRecipesScreen extends StatelessWidget {
  static const routeName = '/category-recipes';
  // final String categoryId;
  // final String categoryTitle;

  // const CategoryRecipesScreen(
  //     {super.key, required this.categoryId, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryRecipes = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('$categoryTitle Recipes'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return RecipeItem(
            id: categoryRecipes[index].id,
            title: categoryRecipes[index].title,
            imageUrl: categoryRecipes[index].imageUrl,
            duration: categoryRecipes[index].duration,
            affordability: categoryRecipes[index].affordability,
            complexity: categoryRecipes[index].complexity,
          );
        },
        itemCount: categoryRecipes.length,
      ),
    );
  }
}
