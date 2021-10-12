import 'package:flutter/material.dart';
import 'package:portfolio/models/contactModel.dart';
import 'package:portfolio/utils/url.dart';

class AboutSection extends StatelessWidget {
  final List<ContactModel> contacts;

  const AboutSection({Key? key, required this.contacts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
            Text(
              '임연우 / Yeonwoo Lim',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: Colors.lightBlue, fontWeight: FontWeight.bold),
            ),
            Text('1996.12.13 / 경기도 구리시'),
            SizedBox(height: 30),
          ] +
          contacts
              .map((contact) => InkWell(
                    onTap: () => launchUrlByKey(contact.urlKey),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Icon(contact.iconData, size: 23),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(contact.detail),
                        ),
                      ],
                    ),
                  ))
              .toList(),
    );
  }
}
