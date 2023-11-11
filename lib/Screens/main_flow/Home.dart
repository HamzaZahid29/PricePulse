import 'package:flutter/material.dart';
import 'package:pricepulse/Components/ReusableAppBar.dart';
import 'package:pricepulse/Consts/AppColors.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:pricepulse/Trees/BrandsWidTree.dart';
import 'package:pricepulse/Trees/HomeWidTree.dart';
import 'package:pricepulse/Trees/LikedWidTree.dart';
import 'package:pricepulse/Trees/MeWidTree.dart';

class Home extends StatefulWidget {
  static String ScreenID = 'Home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List<IconData> data = [
    Icons.home,
    EvaIcons.briefcase,
    EvaIcons.heart,
    EvaIcons.person,

  ];
  List<Widget> WidgetTrees = [
    HomeWidTree(),
    BrandsWidTree(),
    LikedWidTree(),
    MeWidTree(),
  ];
  List<String> WidgetTreesNames = ['PricePulse', 'Brands', 'Favourites', 'Me'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ReusableAppBar(WidgetTreesNames[selectedIndex], selectedIndex),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10),
          child: Material(
            elevation: 3,
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            child: SizedBox(
                height: 60,
                width: double.infinity,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                        data.length,
                        (index) =>
                            NavbarTab(index, selectedIndex, data[index], () {
                              setState(() {
                                selectedIndex = index;
                              });

                            })))),
          ),
        ),
        body: Column(
          children: [
            Expanded(child: WidgetTrees[selectedIndex]),
          ],
        ));
  }
}

class NavbarTab extends StatelessWidget {
  int index;
  int selectedIndex;
  IconData iconData;
  Function function;

  NavbarTab(this.index, this.selectedIndex, this.iconData, this.function);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          function();
        },
        child: Container(
          width: 45,
          decoration: BoxDecoration(
            border: index == selectedIndex
                ? Border(bottom: BorderSide(width: 3.0, color: SecondaryColor))
                : null,
          ),
          child: Icon(
            iconData,
            size: 30,
            color:
                index == selectedIndex ? SecondaryColor : Colors.grey.shade700,
          ),
        ),
      ),
    );
  }
}
