import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                    'images/doctor1.png'), // Replace with user's profile image
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
              'johndoe@example.com', // Replace with user's email
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
              leading: Icon(Icons.account_circle),
              title: Text('Edit Profile'),
              onTap: () {
                // Navigate to the profile editing page
              },
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
      ),
    );
  }
}
