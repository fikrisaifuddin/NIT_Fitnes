import 'package:flutter/material.dart';
import 'package:fitnes_ptnit/profile_screen/YourList.dart';

class WorkoutScreen extends StatelessWidget {
  final List<Map<String, dynamic>> workoutCategories = [
    {"title": "Strength"},
    {"title": "HIIT"},
    {"title": "Cardio"},
    {"title": "Yoga, Stretching"},
    {"title": "Warmup"},
    {"title": "Recovery"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Workout',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Column(
              children: workoutCategories.map((category) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      title: Text(category["title"]),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Yourlist()),
                        );
                      },
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
