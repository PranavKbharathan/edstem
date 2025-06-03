
import 'package:edstem/core/style/colors.dart';
import 'package:edstem/shared/extensions/build_context.dart';
import 'package:edstem/shared/widgets/common_text.dart';
import 'package:flutter/material.dart';

void commonSnack(
  BuildContext context,
  String message, ) {
  final snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.white,

    elevation: 6,
    padding: context.padAll(8),
    margin: context.padOnly(b: 40, l: 16, r: 16),
    content: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 16,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: colorRed,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: context.padAll(8),
                child: Icon(Icons.warning_amber_rounded,color: colorWhite,),
              ),
            ),
            CommonText(
              data: message,
              textColor: colorBlack,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),

        GestureDetector(
          onTap: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
          child: const Icon(Icons.close, color: Colors.grey),
        ),
      ],
    ),
    duration: const Duration(seconds: 4),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
