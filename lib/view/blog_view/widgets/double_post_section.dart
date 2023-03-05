part of '../blog_view.dart';

class _DoublePostSection extends StatelessWidget {
  const _DoublePostSection({
    Key? key,
    required this.post1,
    required this.post2,
  }) : super(key: key);

  final BlogPost post1;
  final BlogPost post2;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: _PostSection(
            post: post1,
          ),
        ),
        const SizedBox(width: 40),
        Expanded(
          child: _PostSection(
            post: post2,
          ),
        ),
      ],
    );
  }
}
