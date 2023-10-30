import 'package:flutter/cupertino.dart';

class Cwithtext extends StatelessWidget {
  final Color color;
  final Widget txtform;
  final double height;
  final double radius;
  const Cwithtext(
      {super.key,
      required this.color,
      required this.txtform,
      required this.height,
      required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: txtform,
    );
  }
}
