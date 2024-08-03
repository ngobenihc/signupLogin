import 'package:flutter/material.dart';
import 'login_screen.dart';
import '../widgets/custom_text_field.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
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
            SizedBox(height: 10),
            CustomTextField(
              hintText: 'Password',
              controller: passwordController,
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add signup logic here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
