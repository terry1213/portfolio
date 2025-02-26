part of 'template.dart';

class _CustomDrawer extends StatelessWidget {
  const _CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).bottomAppBarColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              Center(
                child: Text(
                  '<Yeonwoo Lim/>',
                  style: TextStyle(
                    color: Colors.blueGrey[100],
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Home',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                onTap: () {
                  PortfolioNavigator.pop();
                  PortfolioNavigator.replaceWith(Routes.home);
                },
              ),
              const HorizontalDashedDivider(
                space: 25,
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'About',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                onTap: () {
                  PortfolioNavigator.pop();
                  PortfolioNavigator.replaceWith(Routes.about);
                },
              ),
              const HorizontalDashedDivider(
                space: 25,
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Career',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                onTap: () {
                  PortfolioNavigator.pop();
                  PortfolioNavigator.replaceWith(Routes.career);
                },
              ),
              const HorizontalDashedDivider(
                space: 25,
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Project',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                onTap: () {
                  PortfolioNavigator.pop();
                  PortfolioNavigator.replaceWith(Routes.project);
                },
              ),
              const HorizontalDashedDivider(
                space: 25,
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Blog',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                onTap: () {
                  PortfolioNavigator.pop();
                  PortfolioNavigator.replaceWith(Routes.blog);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
