import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.globalKeys,
  }) : super(key: key);

  final List<GlobalKey> globalKeys;

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
                onPressed: () => Scrollable.ensureVisible(
                  globalKeys[0].currentContext!,
                  duration: const Duration(seconds: 1),
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
                  fixedSize: MaterialStateProperty.all(
                    const Size.fromWidth(80),
                  ),
                ),
                onPressed: () => Scrollable.ensureVisible(
                  globalKeys[1].currentContext!,
                  duration: const Duration(seconds: 1),
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
                onPressed: () => Scrollable.ensureVisible(
                  globalKeys[2].currentContext!,
                  duration: const Duration(seconds: 1),
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
                onPressed: () => Scrollable.ensureVisible(
                  globalKeys[3].currentContext!,
                  duration: const Duration(seconds: 1),
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
                onPressed: () => Scrollable.ensureVisible(
                  globalKeys[4].currentContext!,
                  duration: const Duration(seconds: 1),
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
                onPressed: () => Scrollable.ensureVisible(
                  globalKeys[5].currentContext!,
                  duration: const Duration(seconds: 1),
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
                onPressed: () => EasyDynamicTheme.of(context).changeTheme(
                  dark: Theme.of(context).brightness != Brightness.dark,
                ),
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
