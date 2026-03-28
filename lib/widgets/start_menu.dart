import 'package:flutter/material.dart';

class StartMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: <Widget>[
            _buildSearchBar(),
            _buildPinnedAppsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildPinnedAppsSection() {
    return Expanded(
      child: ListView(
        children: <Widget>[
          _buildAppTile('App 1'),
          _buildAppTile('App 2'),
          _buildAppTile('App 3'),
          // Add more apps here
        ],
      ),
    );
  }

  Widget _buildAppTile(String appName) {
    return Card(
      child: ListTile(
        title: Text(appName),
        onTap: () {
          // Handle tap to launch the app
        },
      ),
    );
  }
}