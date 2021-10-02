import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final pageController;

  const CustomDrawer({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          TextButton(
            child: Text('Home'),
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
            ),
            onPressed: () => pageController.animateToPage(0,
                duration: Duration(milliseconds: 700), curve: Curves.easeInOut),
          ),
          TextButton(
            child: Text('About'),
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
            ),
            onPressed: () => pageController.animateToPage(1,
                duration: Duration(milliseconds: 700), curve: Curves.easeInOut),
          ),
          TextButton(
            child: Text('Skill'),
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
            ),
            onPressed: () => pageController.animateToPage(2,
                duration: Duration(milliseconds: 700), curve: Curves.easeInOut),
          ),
          TextButton(
            child: Text('Career'),
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
            ),
            onPressed: () => pageController.animateToPage(3,
                duration: Duration(milliseconds: 700), curve: Curves.easeInOut),
          ),
          TextButton(
            child: Text('Project'),
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
            ),
            onPressed: () => pageController.animateToPage(4,
                duration: Duration(milliseconds: 700), curve: Curves.easeInOut),
          ),
          TextButton(
            child: Text('Blog'),
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
            ),
            onPressed: () => pageController.animateToPage(5,
                duration: Duration(milliseconds: 700), curve: Curves.easeInOut),
          ),
        ],
      ),
    );
  }
}
