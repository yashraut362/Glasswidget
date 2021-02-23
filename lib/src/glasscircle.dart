import 'dart:ui';
import 'package:flutter/material.dart';

class GlassCircle extends StatefulWidget {
  GlassCircle({
    Key key,
    this.glassSize,
    this.glasswidget,
  }) : super(key: key);

  final double glassSize;

  final Widget glasswidget;

  @override
  _GlassCircleState createState() => _GlassCircleState();
}

class _GlassCircleState extends State<GlassCircle> {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 26.0, sigmaY: 26.0),
          child: Container(
              height: widget.glassSize,
              width: widget.glassSize,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                border: Border.all(
                  width: 1.5,
                  color: Colors.white.withOpacity(0.2),
                ),
              ),
              child: widget.glasswidget),
        ),
      ),
    );
  }
}
