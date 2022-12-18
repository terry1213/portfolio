part of '../template_page.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar(this.itemScrollController, {Key? key}) : super(key: key);

  final ItemScrollController itemScrollController;

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
                onPressed: () => itemScrollController.scrollTo(
                  index: 0,
                  duration: const Duration(milliseconds: 500),
                ),
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
                onPressed: () => itemScrollController.scrollTo(
                  index: 1,
                  duration: const Duration(milliseconds: 500),
                ),
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
                onPressed: () => itemScrollController.scrollTo(
                  index: 2,
                  duration: const Duration(milliseconds: 500),
                ),
                child: Text(
                  'Skill',
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
                onPressed: () => itemScrollController.scrollTo(
                  index: 3,
                  duration: const Duration(milliseconds: 500),
                ),
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
                onPressed: () => itemScrollController.scrollTo(
                  index: 4,
                  duration: const Duration(milliseconds: 500),
                ),
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
                onPressed: () => itemScrollController.scrollTo(
                  index: 5,
                  duration: const Duration(milliseconds: 500),
                ),
                child: Text(
                  'Blog',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
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
