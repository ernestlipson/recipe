import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class CustomText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  FontWeight? myweight;
  TextOverflow overFlow;
  CustomText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.overFlow = TextOverflow.ellipsis,
    this.size = 20.0,
    this.myweight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      // textScaleFactor: size,
      style: TextStyle(
          color: color,
          fontFamily: 'SF-Pro-Rounded-Light.ttf',
          fontWeight: myweight,
          fontSize: size),
    );
  }
}
