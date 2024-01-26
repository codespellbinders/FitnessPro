// lib/screens/settings_screen.dart
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Pro - Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personalization',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            ListTile(
              title: Text('Units'),
              subtitle: Text('Choose your preferred units'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Add navigation or other functionality for unit selection
              },
            ),
            Divider(),
            ListTile(
              title: Text('Goals'),
              subtitle: Text('Set your fitness goals'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Add navigation or other functionality for goal setting
              },
            ),
            SizedBox(height: 24.0),
            Text(
              'Account',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            ListTile(
              title: Text('Change Password'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Add navigation or other functionality for password change
              },
            ),
            Divider(),
            ListTile(
              title: Text('Logout'),
              trailing: Icon(Icons.exit_to_app),
              onTap: () {
                // Add logout functionality here
                // For now, navigate back to the login screen
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
