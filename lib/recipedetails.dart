import 'package:flutter/material.dart';
import 'package:food_recipies/home.dart';
import 'package:food_recipies/profile.dart';

class RecipeDetailsPage extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailsPage({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Details'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    'images/doctor1.png'), // Replace with the actual image path
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recipe.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text('Duration: ${recipe.duration}'),
            Text('Difficulty: ${recipe.difficulty}'),
            SizedBox(height: 20),
            Text(
              'Recipe Details:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              recipe.image,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Ingredients:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Text(recipe.ingredients),
            SizedBox(height: 20),
            Text(
              'Instructions:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Text(recipe.instructions),
          ],
        ),
      ),
    );
  }
}
