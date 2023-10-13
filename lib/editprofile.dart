import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String _userName = "John Doe";
  String _userEmail = "johndoe@example.com";
  String _profileImagePath = "images/doctor1.png";

  TextEditingController? _nameController;
  TextEditingController? _emailController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: _userName);
    _emailController = TextEditingController(text: _userEmail);
  }

  @override
  void dispose() {
    _nameController!.dispose();
    _emailController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                _changeProfilePicture();
              },
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(_profileImagePath),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        _changeProfilePicture();
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _saveChanges();
              },
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _changeProfilePicture() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _profileImagePath = pickedFile.path;
      });
    }
  }

  void _saveChanges() {
    setState(() {
      _userName = _nameController!.text;
      _userEmail = _emailController!.text;
    });
    // Implement logic to save the changes to the user's name and email
  }
}
