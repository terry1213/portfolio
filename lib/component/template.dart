import 'package:flutter/material.dart';
import 'package:portfolio/component/horizontal_dashed_divider.dart';
import 'package:portfolio/core/controller/theme_controller.dart';
import 'package:portfolio/routes.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:provider/provider.dart';

part 'custom_app_bar.dart';
part 'custom_drawer.dart';
part 'footer.dart';

class Template extends StatelessWidget {
  const Template({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.brightness_6),
                  onPressed: context.read<ThemeController>().toggleDarkMode,
                ),
              ],
              centerTitle: true,
              elevation: 0,
            )
          : const _CustomAppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: child,
        ),
      ),
      drawer: const _CustomDrawer(),
      drawerEdgeDragWidth: 0.0,
    );
  }
}
