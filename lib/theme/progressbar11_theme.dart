// A custom Progressbar 11 color scheme and theme data with frosted glass effects, soft pastels, and modern animations.

import 'package:flutter/material.dart';

class Progressbar11Theme {
  static ThemeData get theme {
    return ThemeData(
      primaryColor: Color(0xFFE9B8D1), // Soft pastel pink
      accentColor: Color(0xFFA0DFF7), // Soft pastel blue
      scaffoldBackgroundColor: Color(0xFFF0F4F8), // Light background for frosted glass effect
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent, // Transparent app bar for the frosted effect
        elevation: 0,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Color(0xFFB3E5FC), // Soft pastel blue button
        textTheme: ButtonTextTheme.primary,
      ),
      cardTheme: CardTheme(
        color: Colors.white.withOpacity(0.9), // Frosted glass effect for cards
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      // Modern animations for the theme
      pageTransitionsTheme: PageTransitionsTheme(
        builders: {
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
        },
      ),
      // Define other theme properties as needed
    );
  }
}