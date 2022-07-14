import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:recipe/utils/colors.dart';
import 'package:recipe/widgets/customText.dart';
import 'package:recipe/widgets/customTextSmall.dart';
import 'package:recipe/widgets/icon_text_widget.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  PageController pageController = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _pageBuilder(position);
          }),
    );
  }

  Widget _pageBuilder(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          // A child container inside a parent container takes the full size of the parent container.
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              30,
            ),
            color: index.isEven ? AppColor.mainColor : AppColor.textColor,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/pizzasald.jpg"),
            ),
          ),
        ),
        Align(
          //Align widget ligns child widget to center of parent container
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            // A child container inside a parent container takes the full size of the parent container.
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                30,
              ),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Chinese Delicacy',
                    myweight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => const Icon(
                            Icons.star,
                            color: Colors.blueGrey,
                            size: 15,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      CustomTextSmall(smallText: '4.5'.toString()),
                      SizedBox(width: 10),
                      CustomTextSmall(smallText: '1287'.toString()),
                      SizedBox(width: 3),
                      CustomTextSmall(smallText: 'comments'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconText(
                        iconSize: 20,
                        icon: Icons.circle_sharp,
                        text: 'Normal',
                        iconColor: Colors.blueGrey,
                      ),
                      IconText(
                        iconSize: 20,
                        icon: Icons.location_on,
                        text: '1.7'.toString() + 'km',
                        iconColor: Colors.blueGrey,
                      ),
                      IconText(
                        iconSize: 20,
                        icon: Icons.access_time_rounded,
                        text: '32min',
                        iconColor: Colors.blueGrey,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
