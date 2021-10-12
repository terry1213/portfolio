import 'package:flutter/material.dart';
import 'package:portfolio/utils/url.dart';

class ContactModel {
  const ContactModel({
    required this.urlKey,
    required this.iconData,
    required this.detail,
  });

  final UrlKey urlKey;
  final IconData iconData;
  final String detail;
}
