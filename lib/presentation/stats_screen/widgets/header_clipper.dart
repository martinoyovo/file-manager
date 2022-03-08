import 'package:flutter/material.dart';

class HeaderClipper extends CustomClipper<Path> {
  final double radius;
  HeaderClipper(this.radius);
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height - 2 * radius)
      ..arcToPoint(Offset(size.width - radius, size.height - radius),
          radius: Radius.circular(radius))
      ..lineTo(radius, size.height - radius)
      ..arcToPoint(Offset(0, size.height),
          radius: Radius.circular(radius), clockwise: false)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
