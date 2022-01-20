import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/widgets/horizontal_dashed_divider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer(this.itemScrollController, {
    Key? key,
  }) : super(key: key);

  final ItemScrollController itemScrollController;

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
                  itemScrollController.scrollTo(
                    index: 0,
                    duration: const Duration(milliseconds: 500),
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
                  itemScrollController.scrollTo(
                    index: 1,
                    duration: const Duration(milliseconds: 500),
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
                  itemScrollController.scrollTo(
                    index: 2,
                    duration: const Duration(milliseconds: 500),
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
                  itemScrollController.scrollTo(
                    index: 3,
                    duration: const Duration(milliseconds: 500),
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
                  itemScrollController.scrollTo(
                    index: 4,
                    duration: const Duration(milliseconds: 500),
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
                  itemScrollController.scrollTo(
                    index: 5,
                    duration: const Duration(milliseconds: 500),
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
