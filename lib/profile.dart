import 'package:flutter/material.dart';
import 'package:food_recipies/editprofile.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfilePage()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/doctor1.png'),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'John Doe', // Replace with user's name
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'johndoe@example.com',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 30),
          Text(
            'User Information',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Change Email'),
            onTap: () {
              // Navigate to the email change page
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Change Password'),
            onTap: () {
              // Navigate to the password change page
            },
          ),
        ],
      ),
    );
  }
}
