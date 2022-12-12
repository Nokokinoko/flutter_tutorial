import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tutorial/constant/colors.dart';

class _BatteryLevelIndicatorPainter extends CustomPainter {
  final double percentage;
  final double textCircleRadius;

  _BatteryLevelIndicatorPainter({
    required this.percentage,
    required this.textCircleRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const spaceLen = 16;
    const lineLen = 24;
    for (int i = 1; i < (360 * percentage); i += 5) {
      final per = i / 360.0;
      final color = ColorTween(
        begin: kBatteryOptimizerIndicatorBegin,
        end: kBatteryOptimizerIndicatorEnd,
      ).lerp(per)!;

      final paint = Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4;

      final angle = (2 * pi * per) - (pi * 0.5);
      final cosByAngle = cos(angle);
      final sinByAngle = sin(angle);

      final offset0 = Offset(size.width * 0.5, size.height * 0.5);
      final offset1 = offset0.translate(
        (textCircleRadius + spaceLen) * cosByAngle,
        (textCircleRadius + spaceLen) * sinByAngle,
      );
      final offset2 = offset1.translate(
        lineLen * cosByAngle,
        lineLen * sinByAngle,
      );

      canvas.drawLine(offset1, offset2, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class BatteryLevelIndicator extends StatelessWidget {
  const BatteryLevelIndicator({super.key});

  final percentage = 0.7;
  final size = 164.0;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _BatteryLevelIndicatorPainter(
        percentage: percentage,
        textCircleRadius: size * 0.5,
      ),
      child: Container(
        padding: const EdgeInsets.all(64),
        child: Material(
          color: Colors.white,
          elevation: kBatteryOptimizerElevation,
          borderRadius: BorderRadius.circular(size * 0.5),
          child: SizedBox(
            width: size,
            height: size,
            child: Center(
              child: Text(
                '${percentage * 100}%',
                style:
                    const TextStyle(color: kBatteryOptimizerPink, fontSize: 48),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
