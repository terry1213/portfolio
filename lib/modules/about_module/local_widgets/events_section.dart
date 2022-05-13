import 'package:flutter/material.dart';
import 'package:portfolio/models/event.dart';

class EventsSection extends StatelessWidget {
  const EventsSection({Key? key, required this.title, required this.events})
      : super(key: key);

  final String title;
  final List<Event> events;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 30),
          ] +
          events
              .map(
                (Event about) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(about.period),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Text(about.detail),
                    ),
                  ],
                ),
              )
              .toList(),
    );
  }
}
