import 'package:flutter/material.dart';

class Yourlist extends StatelessWidget {
  // Data seolah-olah diambil dari database
  final List<Map<String, dynamic>> workoutList = [
    {
      "shape": Colors.grey,
      "title": "workout1",
      "description": "Latihan yang melibatkan seluruh tubuh dalam satu sesi."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout List'),
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Expanded(child: _buildWorkoutList()),
        ],
      ),
    );
  }

  Widget _buildWorkoutList() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      itemCount: workoutList.length,
      itemBuilder: (context, index) {
        final workout = workoutList[index];

        return Container(
          margin: EdgeInsets.only(bottom: 8),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  // Kotak warna sebagai representasi bentuk (shape)
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: workout["shape"], // Warna berdasarkan data
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(width: 16),
                  // Bagian teks: title & description
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          workout["title"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          workout["description"],
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
