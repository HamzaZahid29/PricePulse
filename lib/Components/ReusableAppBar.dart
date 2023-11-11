import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:pricepulse/Consts/AppColors.dart';
import 'package:pricepulse/Consts/TextStyles.dart';
class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  int index;

  String barTitle;

  @override
  final Size preferredSize;

  ReusableAppBar(this.barTitle, this.index, {super.key})
      : preferredSize = const Size.fromHeight(70.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70.0,
      centerTitle: true,
      actions: index == 0 ?<Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          child: IconButton(
            icon: const Icon(
              EvaIcons.search,
              size: 30,
            ),
            onPressed: () {
              // Handle the icon press
            },
          ),
        ),
      ] : null,
      elevation: 0,
      flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                stops: const [0.2, 1.0],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  PrimaryColor,
                  SecondaryColor,
                ],
              ))),
      title: Text(
        barTitle,
        style: HeadingText,
      ),
    );
  }
}
