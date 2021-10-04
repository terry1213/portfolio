import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final PageController pageController;

  const CustomAppBar({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Text(
                'Yeonwoo Lim',
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ),
              SizedBox(width: 50),
              TextButton(
                child: Text(
                  'Home',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
                ),
                onPressed: () => pageController..jumpToPage(0),
              ),
              TextButton(
                child: Text(
                  'About',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
                ),
                onPressed: () => pageController..jumpToPage(1),
              ),
              TextButton(
                child: Text(
                  'Skill',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
                ),
                onPressed: () => pageController..jumpToPage(2),
              ),
              TextButton(
                child: Text(
                  'Career',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
                ),
                onPressed: () => pageController..jumpToPage(3),
              ),
              TextButton(
                child: Text(
                  'Project',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
                ),
                onPressed: () => pageController.jumpToPage(4),
              ),
              TextButton(
                child: Text(
                  'Blog',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
                ),
                onPressed: () => pageController.jumpToPage(5),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
        color: Theme.of(context).bottomAppBarColor,
        width: 1360,
      ),
      preferredSize: Size(screenSize.width, 90),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(90);
}
