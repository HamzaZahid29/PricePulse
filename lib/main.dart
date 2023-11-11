import 'package:flutter/material.dart';
import 'Screens/main_flow/Home.dart';
void main() {
  runApp(
      MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Home.ScreenID,
      routes: {
          Home.ScreenID : (context)=>Home(),
      },
  )
  );
}
