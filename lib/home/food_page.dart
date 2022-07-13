import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return _pageBuilder(position);
          }),
    );
  }

  Widget _pageBuilder(int index) {
    return Container();
  }
}
