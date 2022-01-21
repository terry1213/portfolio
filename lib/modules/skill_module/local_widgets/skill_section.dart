import 'package:flutter/material.dart';
import 'package:portfolio/models/skill_model.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({Key? key, required this.skill}) : super(key: key);

  final SkillModel skill;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          skill.name,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        Text(skill.detail),
      ],
    );
  }
}
