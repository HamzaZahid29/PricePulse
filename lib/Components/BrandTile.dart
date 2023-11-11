import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:pricepulse/Consts/TextStyles.dart';

class BrandTile extends StatelessWidget {
  const BrandTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.grey.shade700,offset: Offset(0, 0.1),blurRadius: 0.1)
            ]
        ),
        width: double.maxFinite,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                child: Image.asset(
              'assets/images/samsung.png',
                ),
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text('Samsumg', style: MedBoldText,),
                    SizedBox(height: 3,),
                    Text('234 products',style: SmallBoldText.copyWith(color: Colors.grey.shade500),),
                ],
              ),
                  )),
              Icon(EvaIcons.arrowIosForwardOutline)
            ],
          ),
        ),
      ),
    );
  }
}
