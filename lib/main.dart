// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:cloclapp/clock.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text('Home Screen Content'),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text('Settings Screen Content'),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text('About Screen Content'),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text('Profile Screen Content'),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('dhyey rabadiya'),
            accountEmail: Text('dhyeyrabadiya2030@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/demo.JPG"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ), //Home
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
          ), //Settings
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => AboutScreen()),
              );
            },
          ), //About
          ListTile(
            leading: Icon(Icons.explore),
            title: Text('Clock'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage1(title: 'clock',),
                ),
              );

            },
          ), //Explore
          ListTile(
            leading: Icon(Icons.explore),
            title: Text('ProfilePage'),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ), //ProfilePage
          // Add more ListTiles for additional navigation options
        ],
      ),
    );
  }
}
