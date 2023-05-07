import 'package:flutter/material.dart';

import './screens/tabs_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_recipes_screen.dart';
import './screens/recipe_detail_screen.dart';
import '../screens/filters_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };

  void _setFilters(Map<String, bool> filterData) {}

  void _toggleFavorite(String recipeId) {
    // final existingIndex =
    //     _favoriteRecipes.indexWhere((recipeId) => recipe.id == recipeId);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.pink, // primary color
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.amber, // accent color
        ),
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
              fontFamily: 'RobotoCondesed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: const CategoriesScreen(),
      routes: {
        '/': (ctx) => const TabsScreen(),
        CategoryRecipesScreen.routeName: (ctx) => CategoryRecipesScreen(),
        RecipeDetail.routeName: (ctx) => const RecipeDetail(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(_setFilters),
      },
    );
  }
}
