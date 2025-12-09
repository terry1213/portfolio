part of 'template.dart';

class _Footer extends StatelessWidget {
  const _Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width > AppConstants.footerMinWidth
          ? screenSize.width
          : AppConstants.footerMinWidth,
      padding: const EdgeInsets.all(AppConstants.smallVerticalSpacing),
      color: Theme.of(context).bottomAppBarTheme.color,
      child: Column(
        children: <Widget>[
          const Divider(),
          const SizedBox(height: 10),
          Text(
            AppConstants.copyrightText,
            style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: AppConstants.standardFontSize,
            ),
          ),
        ],
      ),
    );
  }
}
