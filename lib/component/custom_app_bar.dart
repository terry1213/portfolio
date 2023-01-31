part of 'template.dart';

class _CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: Container(
        color: Theme.of(context).bottomAppBarColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: <Widget>[
              Text(
                '<Yeonwoo Lim/>',
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ),
              const SizedBox(width: 50),
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                      MaterialStateProperty.all(const Size.fromWidth(80)),
                ),
                onPressed: () => PortfolioNavigator.replaceWith(Routes.home),
                child: Text(
                  'Home',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                      MaterialStateProperty.all(const Size.fromWidth(80)),
                ),
                onPressed: () => PortfolioNavigator.replaceWith(Routes.about),
                child: Text(
                  'About',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                      MaterialStateProperty.all(const Size.fromWidth(80)),
                ),
                onPressed: () => PortfolioNavigator.replaceWith(Routes.career),
                child: Text(
                  'Career',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                      MaterialStateProperty.all(const Size.fromWidth(80)),
                ),
                onPressed: () => PortfolioNavigator.replaceWith(Routes.project),
                child: Text(
                  'Project',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                      MaterialStateProperty.all(const Size.fromWidth(80)),
                ),
                onPressed: () => PortfolioNavigator.replaceWith(Routes.blog),
                child: Text(
                  'Blog',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
              ),
              // TextButton(
              //   style: ButtonStyle(
              //     fixedSize:
              //         MaterialStateProperty.all(const Size.fromWidth(70)),
              //   ),
              //   onPressed: () => PortfolioNavigator.replaceWith(Routes.skill),
              //   child: Text(
              //     'Skill',
              //     style: Theme.of(context)
              //         .textTheme
              //         .bodyText2!
              //         .copyWith(color: Colors.white),
              //   ),
              // ),
              Expanded(
                child: Container(),
              ),
              IconButton(
                icon: const Icon(Icons.brightness_6),
                color: Colors.white,
                onPressed: context.read<ThemeController>().toggleDarkMode,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
