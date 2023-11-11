import 'package:flutter/material.dart';
import 'package:pricepulse/Components/MeOptionsTile.dart';
import 'package:pricepulse/Components/MeTile.dart';
import 'package:pricepulse/Components/SquareBtn.dart';
import 'package:pricepulse/Consts/AppColors.dart';
import 'package:pricepulse/Consts/TextStyles.dart';
class MeWidTree extends StatelessWidget {
  const MeWidTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MeTile(),
          MeOptionsTile(['Change Password','Upcomming Mobiles','Budget','Privacy Policy']),
          SquareBtn('Log Out',(){}),
        ],
      ),
    );
  }
}
