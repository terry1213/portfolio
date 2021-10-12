import 'package:flutter/material.dart';
import 'package:portfolio/utils/url.dart';

class ContactModel {
  final UrlKey urlKey;
  final IconData iconData;
  final String detail;

  const ContactModel({
    required this.urlKey,
    required this.iconData,
    required this.detail,
  });
}
