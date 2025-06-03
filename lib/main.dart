import 'package:edstem/core/style/colors.dart';
import 'package:edstem/features/home/presentation/pages/splash/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Edstem());
}

class Edstem extends StatelessWidget {
  const Edstem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor:        colorBlack,),
      debugShowCheckedModeBanner: false,
      home: SplshPage(),
    );
  }
}
