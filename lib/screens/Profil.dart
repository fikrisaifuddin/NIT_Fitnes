import 'package:fitnes_ptnit/profile_screen/EditProfile.dart';
import 'package:fitnes_ptnit/profile_screen/YourList.dart';
import 'package:fitnes_ptnit/profile_screen/akun.dart';
import 'package:fitnes_ptnit/profile_screen/history.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  List<Map<String, dynamic>> sosialMedia = [
    {'name': 'YouTube', 'icon': Icons.play_circle_fill},
    {'name': 'Facebook', 'icon': Icons.facebook},
    {'name': 'Instagram', 'icon': Icons.camera_alt},
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
            Text('Profile',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  SizedBox(height: 8),
                  Text('Profile',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                title: Text('Informasi member'),
              ),
            ),
            SizedBox(height: 20),
            Text('Settings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text('Riwayat'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => History()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Edit Profile'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditProfile()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Akun'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Akun()),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text('Instruction',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                leading: Icon(Icons.list),
                title: Text('Your list'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Yourlist()),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text('Follow us',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: List.generate(
                  sosialMedia.length,
                  (index) => ListTile(
                    leading: Icon(sosialMedia[index]['icon'],
                        color: Colors.black), 
                    title: Text(sosialMedia[index]['name']),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log out'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
