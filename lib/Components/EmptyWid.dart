import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class EmptyWid extends StatelessWidget {
  const EmptyWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/LottieFiles/empty.json'),
    );
  }
}
