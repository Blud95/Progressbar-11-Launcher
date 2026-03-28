import 'package:flutter/material.dart';

class AppGrid extends StatelessWidget {
  final List<Map<String, dynamic>> apps = [
    {'name': 'App 1', 'icon': Icons.apps, 'color': Colors.red},
    {'name': 'App 2', 'icon': Icons.circle, 'color': Colors.blue},
    {'name': 'App 3', 'icon': Icons.star, 'color': Colors.green},
    {'name': 'App 4', 'icon': Icons.favorite, 'color': Colors.pink},
    {'name': 'App 5', 'icon': Icons.video_call, 'color': Colors.orange},
    {'name': 'App 6', 'icon': Icons.music_note, 'color': Colors.purple},
    {'name': 'App 7', 'icon': Icons.photo, 'color': Colors.yellow},
    {'name': 'App 8', 'icon': Icons.settings, 'color': Colors.grey},
    {'name': 'App 9', 'icon': Icons.chat, 'color': Colors.lime},
    {'name': 'App 10', 'icon': Icons.access_alarm, 'color': Colors.deepPurple},
    {'name': 'App 11', 'icon': Icons.bolt, 'color': Colors.cyan},
    {'name': 'App 12', 'icon': Icons.delete, 'color': Colors.brown},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        childAspectRatio: 0.8,
      ),
      itemCount: apps.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('${apps[index]['name']} launched!')),
            );
            // Logic to launch the app can go here
          },
          child: MouseRegion(
            onEnter: (_) => print('Hovering over ${apps[index]['name']}'),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: apps[index]['color'].withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    apps[index]['icon'],
                    size: 50,
                  ),
                  SizedBox(height: 8),
                  Text(
                    apps[index]['name'],
                    style: TextStyle(color: Colors.black),
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