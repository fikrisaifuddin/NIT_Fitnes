import 'package:flutter/material.dart';

class KelasScreen extends StatelessWidget {
  final List<Map<String, dynamic>> kelasList = [
    {
      "shape": Colors.grey,
      "title": "Kelas Yoga",
      "description": "Latihan untuk fleksibilitas dan keseimbangan.",
    },
    {
      "shape": Colors.grey,
      "title": "Kelas HIIT",
      "description": "Latihan intensitas tinggi untuk membakar lemak.",
    },
    {
      "shape": Colors.grey,
      "title": "Kelas Kardio",
      "description": "Melatih daya tahan dan kesehatan jantung.",
    },
    {
      "shape": Colors.grey,
      "title": "Kelas Beladiri",
      "description": "Latihan beladiri bersama master.",
    },
    {
      "shape": Colors.grey,
      "title": "Kelas Stretching",
      "description": "Peregangan untuk mengurangi cedera dan kaku otot.",
    },
    {
      "shape": Colors.grey,
      "title": "Kelas Dance",
      "description": "Latihan menari untuk kesehatan dan kebugaran.",
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
          Expanded(child: _KelasList()),
        ],
      ),
    );
  }

  Widget _KelasList() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      itemCount: kelasList.length,
      itemBuilder: (context, index) {
        final workout = kelasList[index];

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
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: workout["shape"],
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(width: 16),
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
                        SizedBox(height: 4),
                        Text(
                          'Detail >',
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
