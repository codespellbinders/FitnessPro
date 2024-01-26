// lib/screens/login_screen.dart
import 'package:fitness_pro_app/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'signup_screen.dart'; // Importing the signup screen

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Pro - Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Username or Email (Required)'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password (Required)'),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Add your login logic here
                // For now, navigate to the dashboard screen on successful login
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashboardScreen()));
              },
              child: Text('Login'),
            ),
            SizedBox(height: 12.0),
            InkWell(
              onTap: () {
                // Navigate to the SignUpScreen when the "Sign Up" link is pressed
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              child: Text('Don\'t have an account? Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
