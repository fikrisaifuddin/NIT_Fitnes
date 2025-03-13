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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Kelas',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: _buildKelasList()),
        ],
      ),
    );
  }

  Widget _buildKelasList() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      itemCount: kelasList.length,
      itemBuilder: (context, index) {
        final kelas = kelasList[index];

        return Container(
          margin: EdgeInsets.only(bottom: 8),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: kelas["shape"],
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          kelas["title"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          kelas["description"],
                          style: TextStyle(fontSize: 12),
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
