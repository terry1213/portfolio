import 'package:flutter/material.dart';
import 'package:portfolio/models/contact_model.dart';
import 'package:portfolio/utils/url.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key, required this.contacts}) : super(key: key);

  final List<ContactModel> contacts;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
            Text(
              '임연우 / Yeonwoo Lim',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const Text('1996.12.13 / 경기도 구리시'),
            const SizedBox(height: 30),
          ] +
          contacts
              .map(
                (ContactModel contact) => InkWell(
                  onTap: () => launchUrlByKey(contact.urlKey),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Icon(contact.iconData, size: 23),
                      ),
                      const SizedBox(width: 5),
                      Flexible(
                        child: Text(contact.detail),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
    );
  }
}
