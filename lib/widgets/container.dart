import 'package:bikerent/constants/color.dart';
import 'package:flutter/cupertino.dart';

class Cwithtextt extends StatelessWidget {
  final Widget clm;
  const Cwithtextt({super.key, required this.clm});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 136,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: kBABABA)),
      child: clm,
    );
  }
}
