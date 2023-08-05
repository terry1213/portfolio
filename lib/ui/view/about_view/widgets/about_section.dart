part of '../about_view.dart';

class _AboutSection extends StatelessWidget {
  const _AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          '임연우 / Yeonwoo Lim',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
              ),
        ),
        const Text('1996.12.13 / 경기도 구리시'),
        const SizedBox(height: 30),
        InkWell(
          onTap: () => launchUrlString('mailto:1213terry@naver.com'),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Icon(LineIcons.envelope, size: 23),
              ),
              SizedBox(width: 5),
              Flexible(
                child: Text('1213terry@naver.com'),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () => launchUrlString('https://github.com/terry1213'),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Icon(LineIcons.github, size: 23),
              ),
              SizedBox(width: 5),
              Flexible(
                child: Text('https://github.com/terry1213'),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () =>
              launchUrlString('https://terry1213.github.io/categories/'),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Icon(LineIcons.bloggerB, size: 23),
              ),
              SizedBox(width: 5),
              Flexible(
                child: Text('https://terry1213.github.io/categories/'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
