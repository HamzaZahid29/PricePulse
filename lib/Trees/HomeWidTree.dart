import 'package:flutter/material.dart';
import 'package:pricepulse/Components/ItemTile.dart';
import 'package:pricepulse/Components/LiquidSipeTile.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pricepulse/Consts/AppColors.dart';
import 'package:pricepulse/Consts/TextStyles.dart';
class HomeWidTree extends StatefulWidget {
  const HomeWidTree({super.key});
  @override
  State<HomeWidTree> createState() => _HomeWidTreeState();
}
class _HomeWidTreeState extends State<HomeWidTree> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 160,
            child: Container(
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: LiquidSwipe(
                pages: [
                  LiquidSipeTile(PrimaryColor, SecondaryColor,
                      'Find Mobile all across the world'),
                  LiquidSipeTile(SecondaryColor, Colors.deepOrangeAccent,
                      'Find Mobile all across the world'),
                  LiquidSipeTile(Colors.deepOrangeAccent, Colors.pinkAccent,
                      'Find Mobile all across the world'),
                  LiquidSipeTile(Colors.pinkAccent, PrimaryColor,
                      'Find Mobile all across the world'),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recently Viewed',
                        style: MedBoldText,
                      ),
                      Text(
                        'Show more',
                        style: MedBoldText.copyWith(color: SecondaryColor),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ItemTile(),
                      ItemTile(),
                      ItemTile(),
                      ItemTile(),
                      ItemTile(),
                      ItemTile(),
                      ItemTile()
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recently Viewed',
                        style: MedBoldText,
                      ),
                      Text(
                        'Show more',
                        style: MedBoldText.copyWith(color: SecondaryColor),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ItemTile(),
                      ItemTile(),
                      ItemTile(),
                      ItemTile(),
                      ItemTile(),
                      ItemTile(),
                      ItemTile()
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
