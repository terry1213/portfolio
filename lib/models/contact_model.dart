import 'package:flutter/material.dart';
import 'package:portfolio/utils/url.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactModel {
  const ContactModel({
    required this.urlKey,
    required this.iconData,
    required this.detail,
  });

  final UrlKey urlKey;
  final IconData iconData;
  final String detail;

  Future<void> openUrl() async => await canLaunch(urls[urlKey] ?? '')
      ? await launch(urls[urlKey] ?? '')
      : throw 'Could not launch ${urls[urlKey]}';
}
