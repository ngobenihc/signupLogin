import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/signup_screen.dart';
import '../widgets/custom_text_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forget Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              hintText: 'Email',
              controller: emailController,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add forget password logic here
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: const Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}
