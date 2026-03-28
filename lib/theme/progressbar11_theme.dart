// Enhanced Progressbar 11 Theme

// Color Palette
const Color primaryColor = Color(0xFF4A90E2);
const Color secondaryColor = Color(0xFF50E3C2);
const Color backgroundColor = Color(0xFFE3F2FD);

// Frosted Glass Effect
class FrostedGlass extends StatelessWidget {
  final Widget child;

  const FrostedGlass({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: child,
        ),
      ),
    );
  }
}

// Typography
TextStyle headerStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: primaryColor,
);

TextStyle bodyStyle = TextStyle(
  fontSize: 16,
  color: Colors.black,
);

// Helper methods
Widget buildProgressBar(double progress) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: secondaryColor,
      borderRadius: BorderRadius.circular(5.0),
    ),
    child: FractionallySizedBox(
      widthFactor: progress,
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    ),
  );
}

// Usage example:
// Widget progressBar = buildProgressBar(0.75); // for 75% progress
