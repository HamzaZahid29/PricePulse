import 'package:flutter/material.dart';
import 'package:pricepulse/Components/SquareBtn.dart';
import 'package:pricepulse/Consts/AppColors.dart';
import 'package:pricepulse/Consts/TextStyles.dart';

class MeTile extends StatelessWidget {
  const MeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade700,offset: Offset(0, 0.1),blurRadius: 0.1)
          ]
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: BGColor,
              radius:40,
              child: Icon(Icons.person,size: 40,color: Colors.white,),
            ),
            SizedBox(height: 20,),
            Text('Hamza Zahid',style: MedBoldText,),
            SizedBox(height: 4,),
            Text('hamz@email.com',style: SmallBoldText.copyWith(color: Colors.grey.shade700),),
            SizedBox(height: 10,),
            SquareBtn('Edit Profile', (){}),

          ],
        ),
      ),
    );
  }
}
