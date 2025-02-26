part of 'template.dart';

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: Container(
        color: Theme.of(context).bottomAppBarTheme.color,
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
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: PortfolioNavigator.compareWithCurrentRoute(
                        context,
                        route: Routes.home,
                      )
                              ? Colors.white
                              : Colors.grey),
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
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: PortfolioNavigator.compareWithCurrentRoute(
                        context,
                        route: Routes.about,
                      )
                              ? Colors.white
                              : Colors.grey),
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
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: PortfolioNavigator.compareWithCurrentRoute(
                        context,
                        route: Routes.career,
                      )
                              ? Colors.white
                              : Colors.grey),
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
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: PortfolioNavigator.compareWithCurrentRoute(
                        context,
                        route: Routes.project,
                      )
                              ? Colors.white
                              : Colors.grey),
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
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: PortfolioNavigator.compareWithCurrentRoute(
                        context,
                        route: Routes.blog,
                      )
                              ? Colors.white
                              : Colors.grey),
                ),
              ),
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
