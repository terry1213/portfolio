import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/screenUtilMinimum.dart';

class CareerPage extends StatelessWidget {
  static Size size = Get.size;
  static TextTheme textTheme = Get.textTheme;

  const CareerPage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          height: size.height > 820 ? size.height : 820,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: size.width - 80 > 1360 ? size.width - 80 : 1360,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Career',
                      style: textTheme.headline2!,
                    ),
                    SizedBox(height: ScreenUtilMinimum(10).h),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
