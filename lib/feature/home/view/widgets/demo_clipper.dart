import 'package:flutter/material.dart';

/// Green section er upore curved (dome) shape
class DomeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 70)
      ..quadraticBezierTo(size.width / 2, -30, size.width, 70)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}