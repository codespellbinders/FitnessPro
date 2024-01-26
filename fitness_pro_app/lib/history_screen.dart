// lib/screens/history_screen.dart
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Pro - History'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            HistoryItem(
              activityName: 'Running',
              distance: '5 km',
              duration: '30 minutes',
              date: '2022-01-01',
            ),
            HistoryItem(
              activityName: 'Cycling',
              distance: '15 km',
              duration: '45 minutes',
              date: '2022-01-03',
            ),
            // Add more history items as needed
          ],
        ),
      ),
    );
  }
}

class HistoryItem extends StatelessWidget {
  final String activityName;
  final String distance;
  final String duration;
  final String date;

  HistoryItem({
    required this.activityName,
    required this.distance,
    required this.duration,
    required this.date,
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
            Text('Date: $date'),
          ],
        ),
        onTap: () {
          // Add navigation or other functionality when a history item is tapped
        },
      ),
    );
  }
}
