import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CareerPage extends StatelessWidget {
  static TextTheme textTheme = Get.textTheme;

  const CareerPage();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Container(
          height: 820,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: 1360,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Career',
                    style: textTheme.headline2!,
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
