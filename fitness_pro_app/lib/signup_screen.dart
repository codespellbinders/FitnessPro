// lib/screens/signup_screen.dart
import 'package:flutter/material.dart';
import 'login_screen.dart'; // Importing the login screen

class SignUpScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Pro - Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email (Required)'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password (Required)'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Confirm Password (Required)'),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Add your signup logic here
                // For now, navigate back to the login screen after successful signup
                Navigator.pop(context);
              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 12.0),
            InkWell(
              onTap: () {
                // Navigate back to the login screen when the "Back to Login" link is pressed
                Navigator.pop(context);
              },
              child: Text('Back to Login'),
            ),
          ],
        ),
      ),
    );
  }
}
