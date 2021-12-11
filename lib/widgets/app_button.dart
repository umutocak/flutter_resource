import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum ButtonType { PRIMARY, PLAIN }

class AppButton extends StatelessWidget {
  final ButtonType type;
  final VoidCallback onPressed;
  final String text;

  AppButton({required this.type, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onPressed,
      child: Container(
        width: double.infinity,
        height: 44,
        decoration: BoxDecoration(
            color: Color(0xFFf78f20),
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(color: Color(0xFF3A3A3A), width: 1)),
        child: Center(
          child: Text(
            this.text,
            style: GoogleFonts.openSans(
              color: Color(0xFF3A3A3A),
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

Color getButtonColor(ButtonType type) {
  switch (type) {
    case ButtonType.PRIMARY:
      return Color(0xFFf78f20);
    case ButtonType.PLAIN:
      return Colors.white;
    default:
      return Color(0xFFf78f20);
  }
}

Color getTextColor(ButtonType type) {
  switch (type) {
    case ButtonType.PLAIN:
      return Color(0xFF3A3A3A);
    case ButtonType.PRIMARY:
      return Colors.white;
    default:
      return Colors.white;
  }
}

Color getBorderColor(ButtonType type) {
  switch (type) {
    case ButtonType.PLAIN:
      return Color(0xFF3A3A3A);
    case ButtonType.PRIMARY:
      return Colors.transparent;
    default:
      return Colors.white;
  }
}