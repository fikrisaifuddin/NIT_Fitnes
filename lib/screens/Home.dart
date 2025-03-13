import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> workoutList = [
    {
      "title": "Yoga",
      "des": "Latihan keseimbangan",
      "image": "assets/fitnes.jpg"
    },
    {
      "title": "HIIT",
      "des": "Latihan intensitas tinggi",
      "image": "assets/fitnes.jpg"
    },
    {
      "title": "Kardio",
      "des": "Melatih daya tahan tubuh",
      "image": "assets/fitnes.jpg"
    },
  ];

  final List<Map<String, String>> kelasEkslusifList = [
    {
      "title": "Ballet",
      "des": "Latihan kelenturan tubuh",
      "image": "assets/fitnes.jpg"
    },
    {
      "title": "Muay Thai",
      "des": "Latihan bela diri",
      "image": "assets/fitnes.jpg"
    },
  ];

  final List<Map<String, String>> mentorList = [
    {
      "title": "Coach Budi",
      "des": "Pakar HIIT dan angkat beban",
      "image": "assets/fitnes.jpg"
    },
    {
      "title": "Coach Nina",
      "des": "Ahli Yoga & Pilates",
      "image": "assets/fitnes.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            SizedBox(height: 50),
            _buildSection(
                "Workout", "Ga perlu ragu untuk olahraga mandiri", workoutList),
            SizedBox(height: 40),
            _buildSection("Kelas Ekslusif",
                "Daftar sekarang untuk join kelas ekslusif", kelasEkslusifList),
            SizedBox(height: 40),
            _buildSection("Mentor Kelas", "Daftar Mentor Kelas", mentorList),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 220,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: Center(
            child: Text(
              'Slot Iklan',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        Positioned(
          bottom: -40,
          left: 16,
          right: 16,
          child: Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              height: 50,
              child: ListTile(
                leading: Icon(
                  Icons.access_time,
                  color: Colors.black,
                ),
                title: Text(
                  'Cek aktivitas membership kamu hari ini',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSection(
      String title, String subtitle, List<Map<String, String>> dataList) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(subtitle, style: TextStyle(fontSize: 12)),
          SizedBox(height: 10),
          _buildHorizontalList(dataList),
        ],
      ),
    );
  }

  Widget _buildHorizontalList(List<Map<String, String>> dataList) {
    return SizedBox(
      height: 190, // Tinggi disesuaikan agar cukup
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          final item = dataList[index];

          return Container(
            width: 150,
            margin: EdgeInsets.only(right: 8),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(12)),
                      image: DecorationImage(
                        image: AssetImage(item["image"]!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item["title"]!,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 4),
                          Text(item["des"]!, style: TextStyle(fontSize: 9)),
                          SizedBox(height: 4),
                          Text('Detail >',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.blue)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
