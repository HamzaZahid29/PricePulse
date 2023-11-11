import 'package:flutter/material.dart';
import 'package:pricepulse/Components/LikedItemTile.dart';
import 'package:pricepulse/Consts/AppColors.dart';
import 'package:pricepulse/Consts/TextStyles.dart';

class LikedWidTree extends StatelessWidget {
  const LikedWidTree({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (context, index) {
        return LikedItemTile();
      },
    );
  }
}
