import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final List<GlobalKey> globalKeys;

  const CustomAppBar({
    Key? key,
    required this.globalKeys,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'Yeonwoo Lim',
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ),
              SizedBox(width: 50),
              TextButton(
                child: Text(
                  'Home',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
                ),
                onPressed: () => Scrollable.ensureVisible(
                    globalKeys[0].currentContext!,
                    duration: Duration(seconds: 1)),
              ),
              TextButton(
                child: Text(
                  'About',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
                ),
                onPressed: () => Scrollable.ensureVisible(
                    globalKeys[1].currentContext!,
                    duration: Duration(seconds: 1)),
              ),
              TextButton(
                child: Text(
                  'Skill',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
                ),
                onPressed: () => Scrollable.ensureVisible(
                    globalKeys[2].currentContext!,
                    duration: Duration(seconds: 1)),
              ),
              TextButton(
                child: Text(
                  'Career',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
                ),
                onPressed: () => Scrollable.ensureVisible(
                    globalKeys[3].currentContext!,
                    duration: Duration(seconds: 1)),
              ),
              TextButton(
                child: Text(
                  'Project',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
                ),
                onPressed: () => Scrollable.ensureVisible(
                    globalKeys[4].currentContext!,
                    duration: Duration(seconds: 1)),
              ),
              TextButton(
                child: Text(
                  'Blog',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),
                ),
                onPressed: () => Scrollable.ensureVisible(
                    globalKeys[5].currentContext!,
                    duration: Duration(seconds: 1)),
              ),
              Expanded(
                child: Container(),
              ),
              IconButton(
                icon: Icon(Icons.brightness_6),
                color: Colors.white,
                onPressed: () => EasyDynamicTheme.of(context).changeTheme(
                    dark: Theme.of(context).brightness != Brightness.dark),
              ),
            ],
          ),
        ),
        color: Theme.of(context).bottomAppBarColor,
      ),
      preferredSize: Size.fromHeight(80),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
