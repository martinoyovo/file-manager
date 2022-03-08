import 'package:file_manager/core/app_export.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class StatsPainter extends CustomPainter {
  final double width;
  final double offset;
  final double radius;

  StatsPainter(
      {required this.width, required this.offset, required this.radius});
  @override
  void paint(Canvas canvas, Size size) {
    final border1 = BorderSide(
        color: ColorConstant.yellow600, width: width, style: BorderStyle.solid);

    final border2 = BorderSide(
        color: ColorConstant.whiteA700, width: width, style: BorderStyle.solid);

    canvas.drawArc(
      Rect.fromCircle(center: Offset(offset, offset), radius: radius),
      -pi,
      pi / (radius >= 50 ? 2.45 : 2.2),
      false,
      border1.toPaint()..strokeCap = StrokeCap.round,
    );

    canvas.drawArc(
      Rect.fromCircle(center: Offset(offset, offset), radius: radius),
      pi / (radius >= 50 ? 1.16 : 1.15),
      -(radius >= 50 ? 1.32 : 1.3) * pi,
      false,
      border2.toPaint()..strokeCap = StrokeCap.round,
    );
  }

  @override
  bool shouldRepaint(covariant StatsPainter oldDelegate) {
    return false;
  }
}
