import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: Color(0xFFE0E0E0),
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.black87,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Name',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'Heshani Godage',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Email',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Row(
              children: const [
                Icon(Icons.email, size: 16),
                SizedBox(width: 8),
                Text(
                  'khgodage@studets.nsbm.ac.lk',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Points',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Row(
              children: const [
                Icon(Icons.star, size: 16),
                SizedBox(width: 8),
                Text(
                  '0',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}