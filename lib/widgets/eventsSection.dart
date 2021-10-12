import 'package:flutter/material.dart';
import 'package:portfolio/models/eventModel.dart';

class EventsSection extends StatelessWidget {
  final String title;
  final List<EventModel> events;

  const EventsSection({Key? key, required this.title, required this.events})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: Colors.lightBlue, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
          ] +
          events
              .map((about) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(about.period),
                      SizedBox(width: 10),
                      Flexible(
                        child: Text(about.detail),
                      ),
                    ],
                  ))
              .toList(),
    );
  }
}
