import 'package:flutter/material.dart';
 import 'demo_auth.dart';
 import 'login_screen.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
 
  void logout(BuildContext context) {
    DemoAuth.logout();
 
Navigator.of(context).pushAndRemoveUntil(
  MaterialPageRoute(
    builder: (context) => const LoginScreen(),
  ),
  (route) => false,
);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => logout(context),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.indigo,
            child: Icon(
              Icons.person,
              size: 60,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Jhon Christopher S. Damasco',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.badge),
                  title: Text('Student ID'),
                  subtitle: Text('2026-557026'),
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Course and Section'),
                  subtitle: Text('BSIT — 3447'),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  subtitle: Text('j.damasco.557026@umindanao.edu.ph'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}