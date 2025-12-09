import 'package:flutter/material.dart';
import 'package:portfolio/routes.dart';

class NavButton extends StatelessWidget {
  const NavButton({
    Key? key,
    required this.label,
    required this.route,
  }) : super(key: key);

  final String label;
  final Routes route;

  @override
  Widget build(BuildContext context) {
    final bool isCurrentRoute = PortfolioNavigator.compareWithCurrentRoute(
      context,
      route: route,
    );

    return TextButton(
      style: ButtonStyle(
        fixedSize: WidgetStateProperty.all(const Size.fromWidth(80)),
      ),
      onPressed: () => PortfolioNavigator.replaceWith(route),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: isCurrentRoute ? Colors.white : Colors.grey,
            ),
      ),
    );
  }
}
