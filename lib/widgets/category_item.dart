import 'package:flutter/material.dart';

import '../screens/category_recipes_screen.dart';
import '../dummy_data.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(
      {super.key, required this.id, required this.title, required this.color});

  // void _selectCategory(BuildContext context) {
  //   Navigator.of(context).push(MaterialPageRoute(builder: (_) {
  //     return CategoryRecipesScreen(categoryId: id, categoryTitle: title);
  //   }));
  // }

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(CategoryRecipesScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
