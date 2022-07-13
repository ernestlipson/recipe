import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextSmall extends StatelessWidget {
  final String smallText;
  Color? smallColor;
  double smallSize;
  FontWeight? smallFontWeight;
  double smallTextheight;

  CustomTextSmall({
    Key? key,
    required this.smallText,
    this.smallColor = const Color(0xFF1A1B19),
    this.smallSize = 12,
    this.smallFontWeight,
    this.smallTextheight = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      smallText,
      style: TextStyle(
        color: smallColor,
        fontFamily: 'SF-Pro-Rounded-Light.ttf',
        fontWeight: smallFontWeight,
        fontSize: smallSize,
        height: smallTextheight,
      ),
    );
  }
}
