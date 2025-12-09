import 'package:flutter/material.dart';
import 'package:portfolio/config/app_constants.dart';

class ResponsiveBreakpoints {
  const ResponsiveBreakpoints({
    required this.screenWidth,
    required this.isSmall,
    required this.isMedium,
    required this.isLarge,
  });

  final double screenWidth;
  final bool isSmall;
  final bool isMedium;
  final bool isLarge;
}

class _ResponsiveBreakpointsProvider extends InheritedWidget {
  const _ResponsiveBreakpointsProvider({
    required this.breakpoints,
    required super.child,
  });

  final ResponsiveBreakpoints breakpoints;

  @override
  bool updateShouldNotify(_ResponsiveBreakpointsProvider oldWidget) {
    return breakpoints.screenWidth != oldWidget.breakpoints.screenWidth;
  }

  static ResponsiveBreakpoints of(BuildContext context) {
    final provider = context
        .dependOnInheritedWidgetOfExactType<_ResponsiveBreakpointsProvider>();
    if (provider != null) {
      return provider.breakpoints;
    }
    final width = MediaQuery.of(context).size.width;
    return ResponsiveBreakpoints(
      screenWidth: width,
      isSmall: width < AppConstants.smallScreenMaxWidth,
      isMedium: width >= AppConstants.smallScreenMaxWidth &&
          width <= AppConstants.largeScreenMinWidth,
      isLarge: width > AppConstants.largeScreenMinWidth,
    );
  }
}

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  static ResponsiveBreakpoints breakpoints(BuildContext context) {
    return _ResponsiveBreakpointsProvider.of(context);
  }

  static bool isSmallScreen(BuildContext context) {
    return breakpoints(context).isSmall;
  }

  static bool isLargeScreen(BuildContext context) {
    return breakpoints(context).isLarge;
  }

  static bool isMediumScreen(BuildContext context) {
    return breakpoints(context).isMedium;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final breakpoints = ResponsiveBreakpoints(
          screenWidth: constraints.maxWidth,
          isSmall: constraints.maxWidth < AppConstants.smallScreenMaxWidth,
          isMedium: constraints.maxWidth >= AppConstants.smallScreenMaxWidth &&
              constraints.maxWidth <= AppConstants.largeScreenMinWidth,
          isLarge: constraints.maxWidth > AppConstants.largeScreenMinWidth,
        );

        return _ResponsiveBreakpointsProvider(
          breakpoints: breakpoints,
          child: Builder(
            builder: (context) {
              if (breakpoints.isLarge) {
                return largeScreen;
              } else if (breakpoints.isMedium) {
                return mediumScreen ?? largeScreen;
              } else {
                return smallScreen ?? largeScreen;
              }
            },
          ),
        );
      },
    );
  }
}
