import 'dart:ui';
import 'package:flutter/material.dart';

class GlassSquare extends StatefulWidget {
  GlassSquare({
    Key key,
    this.glasscurve = 0.0,
    this.glassSize,
    this.glasswidget,
  }) : super(key: key);

  final double glassSize;
  final double glasscurve;
  final Widget glasswidget;

  @override
  _GlassSquareState createState() => _GlassSquareState();
}

class _GlassSquareState extends State<GlassSquare> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.glasscurve),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 26.0, sigmaY: 26.0),
          child: Container(
              height: widget.glassSize,
              width: widget.glassSize,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(widget.glasscurve),
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
