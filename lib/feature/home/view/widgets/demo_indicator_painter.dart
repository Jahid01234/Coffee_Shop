import 'package:coffee_shop_app/core/const/app_colors.dart';
import 'package:flutter/material.dart';

class DomeIndicatorPainter extends CustomPainter {
  final double position;
  final int itemCount;
  final Color color;
  final double barWidth;
  final double strokeWidth;

  DomeIndicatorPainter({
    required this.position,
    required this.itemCount,
    this.color = AppColors.amberColor,
    this.barWidth = 75,
    this.strokeWidth = 4,
  });


  Offset _pointOnDome(double t, double w) {
    final x = w * t;
    final y = 70 - 200 * t * (1 - t);
    return Offset(x, y);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;

    final centerX = w * (position + 0.5) / itemCount;
    final centerT = centerX / w;
    final halfT = (barWidth / 2) / w;

    final t0 = (centerT - halfT).clamp(0.0, 1.0);
    final t1 = (centerT + halfT).clamp(0.0, 1.0);

    final path = Path();
    const steps = 30;
    for (int i = 0; i <= steps; i++) {
      final t = t0 + (t1 - t0) * (i / steps);
      final p = _pointOnDome(t, w);
      if (i == 0) {
        path.moveTo(p.dx, p.dy);
      } else {
        path.lineTo(p.dx, p.dy);
      }
    }

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant DomeIndicatorPainter old) =>
      old.position != position ||
          old.itemCount != itemCount ||
          old.color != color;
}

