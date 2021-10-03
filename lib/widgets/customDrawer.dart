import 'package:flutter/material.dart';
import 'package:portfolio/widgets/horizontalDashedDivider.dart';

class CustomDrawer extends StatelessWidget {
  final pageController;

  CustomDrawer({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Portfolio',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                child: Text(
                  'Home',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                onTap: () => pageController.animateToPage(0,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.easeInOut),
              ),
              HorizontalDashedDivider(
                space: 25,
              ),
              InkWell(
                child: Text(
                  'About',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                onTap: () => pageController.animateToPage(1,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.easeInOut),
              ),
              HorizontalDashedDivider(
                space: 25,
              ),
              InkWell(
                child: Text(
                  'Skill',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                onTap: () => pageController.animateToPage(2,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.easeInOut),
              ),
              HorizontalDashedDivider(
                space: 25,
              ),
              InkWell(
                child: Text(
                  'Career',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                onTap: () => pageController.animateToPage(3,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.easeInOut),
              ),
              HorizontalDashedDivider(
                space: 25,
              ),
              InkWell(
                child: Text(
                  'Project',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                onTap: () => pageController.animateToPage(4,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.easeInOut),
              ),
              HorizontalDashedDivider(
                space: 25,
              ),
              InkWell(
                child: Text(
                  'Blog',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                onTap: () => pageController.animateToPage(5,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.easeInOut),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
