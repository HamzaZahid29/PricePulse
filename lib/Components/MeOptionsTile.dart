import 'package:flutter/material.dart';
import 'package:pricepulse/Components/Option.dart';
class MeOptionsTile extends StatelessWidget {
  List<String> st;
  MeOptionsTile(this.st);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
        child: Column(
          children:List.generate(st.length, (index) => OptionTile(st[index]))
        ),
    );
  }
}
