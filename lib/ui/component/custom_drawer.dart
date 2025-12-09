part of 'template.dart';

class _CustomDrawer extends StatelessWidget {
  const _CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).bottomAppBarTheme.color,
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
              const DrawerMenuItem(label: 'Home', route: Routes.home),
              const HorizontalDashedDivider(space: 25),
              const DrawerMenuItem(label: 'About', route: Routes.about),
              const HorizontalDashedDivider(space: 25),
              const DrawerMenuItem(label: 'Career', route: Routes.career),
              const HorizontalDashedDivider(space: 25),
              const DrawerMenuItem(label: 'Project', route: Routes.project),
              const HorizontalDashedDivider(space: 25),
              const DrawerMenuItem(label: 'Blog', route: Routes.blog),
            ],
          ),
        ),
      ),
    );
  }
}
