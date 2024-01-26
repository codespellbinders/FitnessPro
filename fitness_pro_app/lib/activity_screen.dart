// lib/screens/activity_screen.dart
import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Pro - Activities'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ActivityItem(
              activityName: 'Running',
              distance: '5 km',
              duration: '30 minutes',
            ),
            ActivityItem(
              activityName: 'Cycling',
              distance: '15 km',
              duration: '45 minutes',
            ),
            // Add more activity items as needed
          ],
        ),
      ),
    );
  }
}

class ActivityItem extends StatelessWidget {
  final String activityName;
  final String distance;
  final String duration;

  ActivityItem({
    required this.activityName,
    required this.distance,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Text(activityName, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Distance: $distance'),
            Text('Duration: $duration'),
          ],
        ),
        onTap: () {
          // Add navigation or other functionality when an activity item is tapped
        },
      ),
    );
  }
}
