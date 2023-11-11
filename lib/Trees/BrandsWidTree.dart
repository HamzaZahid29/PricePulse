import 'package:flutter/material.dart';
import 'package:pricepulse/Components/BrandTile.dart';
import 'package:pricepulse/Components/EmptyWid.dart';
import 'package:pricepulse/Consts/AppColors.dart';
import 'package:pricepulse/Consts/TextStyles.dart';
class BrandsWidTree extends StatelessWidget {
  const BrandsWidTree({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (context, index) {
        return BrandTile();
      },
    );
  }
}
