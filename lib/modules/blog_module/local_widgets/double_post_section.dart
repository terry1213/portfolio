import 'package:flutter/material.dart';
import 'package:portfolio/models/post_model.dart';
import 'package:portfolio/modules/blog_module/local_widgets/post_section.dart';

class DoublePostSection extends StatelessWidget {
  const DoublePostSection({
    Key? key,
    required this.post1,
    required this.post2,
  }) : super(key: key);

  final PostModel post1;
  final PostModel post2;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: PostSection(
            post: post1,
          ),
        ),
        const SizedBox(width: 40),
        Expanded(
          child: PostSection(
            post: post2,
          ),
        ),
      ],
    );
  }
}
