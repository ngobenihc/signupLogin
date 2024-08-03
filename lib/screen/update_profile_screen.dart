import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';

class UpdateProfileScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              hintText: 'Name',
              controller: nameController,
            ),
            SizedBox(height: 10),
            CustomTextField(
              hintText: 'Email',
              controller: emailController,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add update profile logic here
              },
              child: Text('Update Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
