import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  final double? toolbarHeight;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.toolbarHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: lightBackgroundColor,
      iconTheme: IconThemeData(color: blackColor),
      title: Text(
        title,
        style: blackTextStyle.copyWith(
          fontSize: 20,
          fontWeight: semiBold,
        ),
      ),
    );
    ;
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight!);
}
