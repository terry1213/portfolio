class AppConstants {
  AppConstants._();

  static const double smallScreenMaxWidth = 800;

  static const double largeScreenMinWidth = 1200;

  static const Duration fadeInDuration = Duration(milliseconds: 500);

  static const Duration longAnimationDuration = Duration(milliseconds: 2000);

  static const double blogCarouselItemHeight = 630;

  static const double blogCarouselBreakpoint = 1050;

  static const double blogCarouselMaxWidth = 1300;

  static const double blogCarouselSmallWidth = 500;

  static const double footerMinWidth = 1360;

  static const double homeProfileImageBase = 420;

  static const double homeProfileImageMin = 400;

  static const double homeProfileImageMax = 600;

  static const double homeProfileImageOffsetMultiplier = 350;

  static const double paddingRatioLarge1 = 4;

  static const double paddingRatioLarge2 = 7;

  static const double paddingRatioMedium = 10;

  static const double paddingRatioSmall = 13;

  static const double projectAboutPaddingBase = 1000;

  static const double standardVerticalSpacing = 70;

  static const double standardSectionSpacing = 50;

  static const double largeSectionSpacing = 80;

  static const double mediumSectionSpacing = 60;

  static const double smallVerticalSpacing = 20;

  static const double mediumVerticalSpacing = 30;

  static const double timelinePadding = 20;

  static const double timelineItemBottomPadding = 25;

  static const double projectSectionBottomPadding = 40;

  static const double carouselItemVerticalPadding = 10;

  static const double carouselItemHorizontalMargin = 30;

  static const double carouselItemHorizontalPadding = 20;

  static const double timelineIndicatorSize = 30;

  static const double timelineConnectorThickness = 4;

  static const double timelineDotBorderWidth = 4;

  static const double standardFontSize = 14;

  static const double standardBorderRadius = 8;

  static const int copyrightYear = 2025;

  static const String authorName = 'Yeonwoo Lim';

  static String get copyrightText => 'Copyright © $copyrightYear | $authorName';

  static const int httpSuccessStatusThreshold = 500;

  static const Duration networkTimeout = Duration(seconds: 10);
}
