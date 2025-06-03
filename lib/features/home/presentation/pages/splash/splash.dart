import 'package:edstem/core/constants/strings.dart';
import 'package:edstem/features/home/presentation/pages/home/home.dart';
import 'package:edstem/shared/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplshPage extends StatefulWidget {
  const SplshPage({super.key});

  @override
  State<SplshPage> createState() => _SplshPageState();
}

class _SplshPageState extends State<SplshPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Lottie.asset(
          "${appAnim}splash.json",

          onLoaded: (composition) {
            Future.delayed(composition.duration, () {
              if (context.mounted) {
                context.pushAndRemoveUntil(page: HomePage());
              }
            });
          },
        ),
      ),
    );
  }
}
