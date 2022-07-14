import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:recipe/widgets/customTextSmall.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final double iconSize;
  final Color iconColor;
  const IconText({
    Key? key,
    required this.icon,
    required this.text,
    // required this.textColor,
    required this.iconColor,
    required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: iconSize),
        SizedBox(width: 5),
        CustomTextSmall(
          smallText: text,
        ),
      ],
    );
  }
}
