import 'package:edstem/core/style/colors.dart';
import 'package:edstem/features/home/presentation/pages/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load();
  runApp(const Edstem());
}

class Edstem extends StatelessWidget {
  const Edstem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: colorBlack),
      debugShowCheckedModeBanner: false,
      home: SplshPage(),
    );
  }
}
