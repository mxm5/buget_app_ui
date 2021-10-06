import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({this.color = Colors.white, this.radius = 5, this.child,this.height});

  final Color color;
  final double radius;
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(radius),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.24),
                  offset: Offset(0, 2),
                  blurRadius: 3),
              BoxShadow(
                  color: Colors.black.withOpacity(0.24),
                  offset: Offset(0, -1),
                  blurRadius: 3),

            ]),
        child: child,
      ),
    );
  }
}
