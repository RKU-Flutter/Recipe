import 'package:flutter/material.dart';
import 'package:food_recipies/views/profile.dart';

class RecipeDetailsPage extends StatelessWidget {
  final String? title;
  final String? rating;
  final String? cookTime;
  final String? thumbnailUrl;

  RecipeDetailsPage({
    @required this.title,
    @required this.rating,
    @required this.cookTime,
    @required this.thumbnailUrl,
  });

  final List<String> commonIngredients = [
    "1/2 spoon salts",
    "Oil",
    "Chicken",
  ];

  final List<String> commonInstructions = [
    "Common Instruction 1: \n Open the stove.",
    "Common Instruction 2: \n Put the fry pan in the stove.",
    "Common Instruction 3: Pour the  oil in the Pan. Let the Pan to be heated.",
  ];

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
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(thumbnailUrl!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    SizedBox(width: 7),
                    Text(rating!, style: TextStyle(color: Colors.black)),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.schedule,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    SizedBox(width: 7),
                    Text(cookTime!, style: TextStyle(color: Colors.black)),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Common Ingredients",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                for (String ingredient in commonIngredients)
                  Text(ingredient, style: TextStyle(color: Colors.black)),
                SizedBox(height: 20),
                Text(
                  "Common Instructions",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                for (String instruction in commonInstructions)
                  Text(instruction, style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
