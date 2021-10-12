import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/widgets/horizontal_dashed_divider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
    required this.globalKeys,
  }) : super(key: key);

  final List<GlobalKey> globalKeys;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).bottomAppBarColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              Center(
                child: Text(
                  '<Yeonwoo Lim/>',
                  style: TextStyle(
                    color: Colors.blueGrey[100],
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                child: Text(
                  'Home',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                onTap: () {
                  Scrollable.ensureVisible(
                    globalKeys[0].currentContext!,
                    duration: const Duration(seconds: 1),
                  );
                  Get.back();
                },
              ),
              const HorizontalDashedDivider(
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
                onTap: () {
                  Scrollable.ensureVisible(
                    globalKeys[1].currentContext!,
                    duration: const Duration(seconds: 1),
                  );
                  Get.back();
                },
              ),
              const HorizontalDashedDivider(
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
                onTap: () {
                  Scrollable.ensureVisible(
                    globalKeys[2].currentContext!,
                    duration: const Duration(seconds: 1),
                  );
                  Get.back();
                },
              ),
              const HorizontalDashedDivider(
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
                onTap: () {
                  Scrollable.ensureVisible(
                    globalKeys[3].currentContext!,
                    duration: const Duration(seconds: 1),
                  );
                  Get.back();
                },
              ),
              const HorizontalDashedDivider(
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
                onTap: () {
                  Scrollable.ensureVisible(
                    globalKeys[4].currentContext!,
                    duration: const Duration(seconds: 1),
                  );
                  Get.back();
                },
              ),
              const HorizontalDashedDivider(
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
                onTap: () {
                  Scrollable.ensureVisible(
                    globalKeys[5].currentContext!,
                    duration: const Duration(seconds: 1),
                  );
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
