import 'package:flutter/material.dart';
import 'package:portfolio/config/url.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Contact {
  const Contact({
    required this.urlKey,
    required this.iconData,
    required this.detail,
  });

  final UrlKey urlKey;
  final IconData iconData;
  final String detail;

  Future<void> openUrl() async => await canLaunchUrlString(urls[urlKey] ?? '')
      ? await launchUrlString(urls[urlKey] ?? '')
      : throw 'Could not launch ${urls[urlKey]}';
}
