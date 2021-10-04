import 'package:flutter/material.dart';
import 'package:portfolio/widgets/horizontalDashedDivider.dart';

class CustomDrawer extends StatelessWidget {
  final PageController pageController;

  CustomDrawer({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).bottomAppBarColor,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Yeonwoo Lim',
                  style: TextStyle(
                    color: Colors.blueGrey[100],
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3,
                  ),
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                child: Text(
                  'Home',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                onTap: () => pageController.jumpToPage(0),
              ),
              HorizontalDashedDivider(
                space: 25,
              ),
              InkWell(
                child: Text(
                  'About',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                onTap: () => pageController.jumpToPage(1),
              ),
              HorizontalDashedDivider(
                space: 25,
              ),
              InkWell(
                child: Text(
                  'Skill',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                onTap: () => pageController..jumpToPage(2),
              ),
              HorizontalDashedDivider(
                space: 25,
              ),
              InkWell(
                child: Text(
                  'Career',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                onTap: () => pageController.jumpToPage(3),
              ),
              HorizontalDashedDivider(
                space: 25,
              ),
              InkWell(
                child: Text(
                  'Project',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                onTap: () => pageController..jumpToPage(4),
              ),
              HorizontalDashedDivider(
                space: 25,
              ),
              InkWell(
                child: Text(
                  'Blog',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                onTap: () => pageController..jumpToPage(5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
