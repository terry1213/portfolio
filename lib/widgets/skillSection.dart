import 'package:flutter/material.dart';
import 'package:portfolio/models/skillModel.dart';

class SkillSection extends StatelessWidget {
  final SkillModel skill;

  const SkillSection({Key? key, required this.skill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          skill.name,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Text(skill.detail),
      ],
    );
  }
}
