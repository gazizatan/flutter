import 'package:flutter/material.dart';
import '../models/food_category.dart';

class CategoryCard extends StatelessWidget {
  final FoodCategory category;

  const CategoryCard({super.key, required this.category});

  /*************  ✨ Codeium Command ⭐  *************/
  /// Builds a widget representing a category card.
  ///
  /// The category card displays an image with a "Yummy" label on the top
  /// left and a "Smoothies" label rotated 90 degrees on the bottom right.
  /// Below the image is a list tile that shows the category name and the
  /// number of restaurants available in that category.
  ///
  /// The text styles are derived from the current theme's textTheme and
  /// color scheme to ensure consistency with the app's overall design.

  /******  f62399d1-9b64-4d3c-979f-7e14878990c0  *******/
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(
      context,
    ).textTheme.apply(displayColor: Theme.of(context).colorScheme.onSurface);

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(8.0),
            ),
            child: Image.asset(category.imageUrl),
          ),
          ListTile(
            title: Text(category.name, style: textTheme.titleSmall),
            subtitle: Text(
              '${category.numberOfRestaurants} restaurants',
              style: textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
