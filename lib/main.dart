import 'package:flutter/material.dart';
import 'models/recipe.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: HomeScreen(recipes: _getRecipes()),
      debugShowCheckedModeBanner: false,
    );
  }

  List<Recipe> _getRecipes() {
    return [
      Recipe(
        name: 'Mint Lemonade Mojito',
        description:
            'A refreshing blend of mint, lime, and sparkling water with a twist of sweetness',
        prepTime: '10 minutes',
        servings: '2 servings',
        imagePath: 'assets/images/mint_mojito.jpeg',
        ingredients: [
          '2 cups fresh mint leaves',
          '1/4 cup fresh lime juice',
          '1/4 cup fresh lemon juice',
          '3 tablespoons sugar (or to taste)',
          '2 cups sparkling water',
          '1 cup ice cubes',
          'Lime and lemon slices for garnish',
          'Fresh mint sprigs for garnish',
        ],
        instructions: [
          'In a pitcher, muddle the mint leaves gently to release their oils.',
          'Add fresh lime juice, lemon juice, and sugar. Stir until sugar dissolves.',
          'Add ice cubes to the pitcher.',
          'Pour in sparkling water and stir gently to combine.',
          'Taste and adjust sweetness if needed.',
          'Pour into glasses filled with ice.',
          'Garnish with lime and lemon slices and fresh mint sprigs.',
          'Serve immediately and enjoy!',
        ],
      ),
      Recipe(
        name: 'Strawberry Matcha Latte',
        description:
            'A creamy and vibrant drink combining earthy matcha with sweet strawberry flavors',
        prepTime: '15 minutes',
        servings: '1 serving',
        imagePath: 'assets/images/matcha.jpeg',
        ingredients: [
          '1 teaspoon high-quality matcha powder',
          '1/4 cup hot water (not boiling)',
          '1/2 cup fresh strawberries, hulled',
          '2 tablespoons sugar or maple syrup',
          '3/4 cup milk of choice (dairy or plant-based)',
          '1/4 cup heavy cream (optional, for topping)',
          'Ice cubes (for iced version)',
          'Sliced strawberries for garnish',
        ],
        instructions: [
          'Whisk matcha powder with hot water until smooth and frothy.',
          'Blend strawberries with 1 tablespoon of sugar until smooth.',
          'Strain the strawberry puree to remove seeds (optional).',
          'Heat the milk in a saucepan or steam it if you have an espresso machine.',
          'In a glass or mug, add the strawberry puree at the bottom.',
          'Pour the prepared matcha over the strawberry layer.',
          'Slowly pour the steamed milk to create layers.',
          'Top with whipped cream if desired and garnish with sliced strawberries.',
          'Stir before drinking or enjoy the beautiful layers!',
        ],
      ),
      Recipe(
        name: 'Pumpkin Caramel Latte',
        description:
            'A warming autumn-inspired latte with rich pumpkin spice and sweet caramel notes',
        prepTime: '12 minutes',
        servings: '1 serving',
        imagePath: 'assets/images/pum_latte.jpeg',
        ingredients: [
          '1/2 cup strong brewed coffee or 2 shots espresso',
          '3/4 cup milk of choice',
          '2 tablespoons pumpkin puree',
          '2 tablespoons caramel sauce (plus extra for drizzling)',
          '1 tablespoon maple syrup or brown sugar',
          '1/2 teaspoon pumpkin pie spice',
          '1/4 teaspoon vanilla extract',
          'Whipped cream for topping',
          'Ground cinnamon for dusting',
        ],
        instructions: [
          'Brew a strong cup of coffee or prepare espresso shots.',
          'In a small saucepan, whisk together milk, pumpkin puree, maple syrup, and pumpkin pie spice.',
          'Heat the mixture over medium heat, whisking constantly until steaming (don\'t boil).',
          'Remove from heat and whisk in vanilla extract.',
          'Drizzle caramel sauce inside your mug.',
          'Pour the hot coffee into the mug.',
          'Add the pumpkin milk mixture and stir well.',
          'Top with whipped cream and drizzle with more caramel sauce.',
          'Dust with ground cinnamon and serve immediately.',
        ],
      ),
    ];
  }
}
