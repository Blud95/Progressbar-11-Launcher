import 'package:flutter/material.dart';

class Taskbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1), // Frosted glass effect
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, -2), // Shadows above
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Start Menu Button
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Logic for opening the Start Menu
            },
          ),
          // Pinned App Icons
          Row(
            children: [
              _buildPinnedAppIcon(Icons.home, context),
              _buildPinnedAppIcon(Icons.search, context),
              _buildPinnedAppIcon(Icons.settings, context),
            ],
          ),
          // System Tray Icons
          Row(
            children: [
              Icon(Icons.volume_up),
              Icon(Icons.battery_full),
              Icon(Icons.network_check),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPinnedAppIcon(IconData icon, BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _showHoverEffect(icon, context, true),
      onExit: (_) => _showHoverEffect(icon, context, false),
      child: IconButton(
        icon: Icon(icon),
        onPressed: () {
          // Logic for opening the app
        },
      ),
    );
  }

  void _showHoverEffect(IconData icon, BuildContext context, bool isHovered) {
    // Implement hover effect logic, e.g., changing the icon color
  }
}