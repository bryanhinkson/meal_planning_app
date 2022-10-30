import 'package:flutter/material.dart';
import 'package:meal_app/plan/plan_home.dart';
import 'package:meal_app/prep/prep_home.dart';
import 'package:meal_app/recipes/recipe_home.dart';
import 'package:meal_app/shopping/shopping_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Meal Planner'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.dining),
                  text: 'Plan',
                ),
                Tab(
                  icon: Icon(Icons.cake),
                  text: 'Recipes',
                ),
                Tab(
                  icon: Icon(Icons.add_shopping_cart),
                  text: 'Shopping',
                ),
                Tab(
                  icon: Icon(Icons.blender),
                  text: 'Prep',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              PlanHome(),
              RecipeHome(),
              ShoppingHome(),
              PrepHome(),
            ],
          ),
        ),
      ),
    );
  }
}
