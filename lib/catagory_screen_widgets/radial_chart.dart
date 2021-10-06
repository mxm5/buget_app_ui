import 'dart:math';

import 'package:flutter/material.dart';

class RadialPainter extends CustomPainter {
  final Color lineColor;
  final Color bgColor;
  final double lineWidth;
  final double purePercentage;

  RadialPainter(
      {this.bgColor, this.lineColor, this.lineWidth, this.purePercentage});

  @override
  void paint(Canvas canvas, Size size) {
/*TODO: create pen for draw bg */
    final Paint drawBgPen = Paint()
      ..color = bgColor
      ..strokeWidth = lineWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
/*TODO: create pen for draw fore g */
    final Paint drawFgPen = Paint()
      ..color = lineColor
      ..strokeWidth = lineWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
/*TODO:SYNTAX SUGAR */
/*TODO: drawBgPen.prop1=x;  drawBgPen.prop2=y -->  Paint drawBgPen = Paint()..prop1=x..prop2=y */
/*TODO:offset =  مختصات مرکز دایره*/
    final Offset center = Offset((size.width) / 2, (size.height) / 2);
/*TODO: درست کردن شعاع دایره */
/*TODO: ایمپورت کردن لایبری ریاضیات  */
    final double twiceRadius = min(size.width, size.height);
/*TODO: برای این یک بارکامل و دفه بعدی نصفشو حساب کردیم  که مقدار فضای محاسباتی گوشی اس ۳ کمتر بود ومیپرید بیرون  */
    final double radius = twiceRadius/2;
/*TODO: کشیدن دایره با دستور دادن به بوم نقاشی */
    canvas.drawCircle(center, radius, drawBgPen);
/*TODO: کشیدن کمان دایره با دستور دادن به بوم نقاشی */
    final double startingAngle = -pi/2;
    final double sweepAngle = 2*pi*purePercentage;
    canvas.drawArc(Rect.fromCircle(center: center,radius: radius), startingAngle , sweepAngle , /*useCenter*/ false , drawFgPen);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
