import 'package:flutter/material.dart';
import 'package:food_recipies/recipedetails.dart';

class HomeScreen extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      title: 'Pasta with Tomato Sauce',
      image: 'images/doctor1.png',
      duration: '30 min',
      difficulty: 'Easy',
      details:
          'Delicious pasta with a rich tomato sauce. This is a simple yet tasty recipe that you can make at home.',
    ),
    Recipe(
      title: 'Chicken Stir-Fry',
      image: 'images/doctor1.png',
      duration: '45 min',
      difficulty: 'Medium',
      details:
          'A savory chicken stir-fry with vegetables. This dish is quick to prepare and full of flavor.',
    ),
    Recipe(
      title: 'Chocolate Chip Cookies',
      image: 'images/doctor1.png',
      duration: '25 min',
      difficulty: 'Easy',
      details:
          'Classic chocolate chip cookies, perfect for dessert. Follow the recipe to make soft and chewy cookies.',
    ),
    // Add more recipes here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe App'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return RecipeCard(recipe: recipes[index]);
        },
      ),
    );
  }
}

class Recipe {
  final String title;
  final String image;
  final String duration;
  final String difficulty;
  final String details;

  Recipe({
    required this.title,
    required this.image,
    required this.duration,
    required this.difficulty,
    required this.details,
  });
}

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  RecipeCard({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            recipe.image,
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recipe.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Duration: ${recipe.duration}'),
                    Text('Difficulty: ${recipe.difficulty}'),
                  ],
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeDetailsPage(recipe: recipe),
                      ),
                    );
                  },
                  child: Text('See More'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
