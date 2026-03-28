// Complete Progressbar 11 Launcher Application Code

import 'package:flutter/material.dart';

void main() {
  runApp(Progressbar11Launcher());
}

class Progressbar11Launcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Progressbar 11 Launcher',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progressbar 11 Launcher'),
      ),
      body: Column(
        children: <Widget>[
          Taskbar(),
          AppGrid(),
        ],
      ),
      drawer: StartMenu(),
    );
  }
}

class Taskbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text('Start'),
          ),
          // Add other taskbar items here
        ],
      ),
    );
  }
}

class StartMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Start Menu'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Handle menu item tap
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Handle menu item tap
            },
          ),
        ],
      ),
    );
  }
}

class AppGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 4,
        children: <Widget>[
          AppIcon(icon: Icons.apps, label: 'App 1'),
          AppIcon(icon: Icons.app_blocking, label: 'App 2'),
          // Add more app icons here
        ],
      ),
    );
  }
}

class AppIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  AppIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 50),
        Text(label),
      ],
    );
  }
}