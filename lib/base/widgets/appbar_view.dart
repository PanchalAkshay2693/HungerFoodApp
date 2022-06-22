import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_size.dart';


class AppBarView extends StatelessWidget implements PreferredSize {

  final Color? color;
  final Widget? title;
  final bool? centerTitle;
  final double? elevation;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final List<Widget>? actionItems;
  final Size? height;
  final Widget? leading;
  final bool? automaticallyImplyLeading;
  final PreferredSize? bottomLineWidget;

  const AppBarView(
      {Key? key,
        this.color = WHITE,
        this.title,
        this.centerTitle,
        this.elevation = 0.0,
        this.scaffoldKey,
        this.actionItems,
        this.height,
        this.leading,
        this.automaticallyImplyLeading,
        this.bottomLineWidget})
      : super(key: key);

  @override
  Size get preferredSize {
    return height ?? const Size.fromHeight(kAppbarHeight);
  }

  @override
  Widget get child => Container();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: AppBar(
          backgroundColor: color,
          automaticallyImplyLeading: automaticallyImplyLeading ?? false,
          titleSpacing: 0.0,
          elevation: elevation,
          centerTitle: centerTitle ?? true,
          leading: leading,
          title: title,
          actions: actionItems,
          bottom: bottomLineWidget ?? const PreferredSize(
              child: SizedBox(),
              preferredSize: Size.fromHeight(0)
          ),
        )
    );
  }
}