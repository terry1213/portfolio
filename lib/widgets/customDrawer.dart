import 'package:flutter/material.dart';
import 'package:portfolio/widgets/horizontalDashedDivider.dart';

class CustomDrawer extends StatelessWidget {
  final List<GlobalKey> globalKeys;

  CustomDrawer({
    Key? key,
    required this.globalKeys,
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
                onTap: () => Scrollable.ensureVisible(
                    globalKeys[0].currentContext!,
                    duration: Duration(seconds: 1)),
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
                onTap: () => Scrollable.ensureVisible(
                    globalKeys[1].currentContext!,
                    duration: Duration(seconds: 1)),
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
                onTap: () => Scrollable.ensureVisible(
                    globalKeys[2].currentContext!,
                    duration: Duration(seconds: 1)),
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
                onTap: () => Scrollable.ensureVisible(
                    globalKeys[3].currentContext!,
                    duration: Duration(seconds: 1)),
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
                onTap: () => Scrollable.ensureVisible(
                    globalKeys[4].currentContext!,
                    duration: Duration(seconds: 1)),
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
                onTap: () => Scrollable.ensureVisible(
                    globalKeys[5].currentContext!,
                    duration: Duration(seconds: 1)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
