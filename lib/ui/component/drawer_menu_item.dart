import 'package:flutter/material.dart';
import 'package:portfolio/routes.dart';

class DrawerMenuItem extends StatelessWidget {
  const DrawerMenuItem({
    Key? key,
    required this.label,
    required this.route,
  }) : super(key: key);

  final String label;
  final Routes route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        PortfolioNavigator.pop();
        PortfolioNavigator.replaceWith(route);
      },
      child: SizedBox(
        width: double.maxFinite,
        child: Text(
          label,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
