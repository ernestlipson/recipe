import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:recipe/home/food_page.dart';
import 'package:recipe/widgets/customText.dart';
import 'package:recipe/widgets/customTextSmall.dart';

import '../utils/colors.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            //TODO: Scrollable
            child: Container(
              margin: EdgeInsets.only(top: 50, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CustomText(
                        text: 'Ernestlison',
                        color: AppColor.mainColor,
                        size: 20.8,
                        myweight: FontWeight.w400,
                      ),
                      Row(
                        children: [
                          CustomTextSmall(
                            smallText: 'developer',
                            smallColor: AppColor.textColor,
                          ),
                          Icon(
                            size: 16,
                            Icons.arrow_downward_rounded,
                          )
                        ],
                      ),
                      // // PageView(
                      //   children: [
                      //     Container(
                      //       color: AppColor.textColor,
                      //     ),
                      //     Container(
                      //       color: AppColor.barColor,
                      //     ),
                      //     Container(
                      //       color: AppColor.foregroundColor,
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                  Center(
                    child: Container(
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: AppColor.mainColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      // color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const FoodPage(),
        ],
      ),
    );
  }
}
