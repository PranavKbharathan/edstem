import 'package:edstem/core/constants/strings.dart';
import 'package:edstem/core/style/colors.dart';
import 'package:edstem/shared/extensions/build_context.dart';
import 'package:edstem/shared/widgets/common_text.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> details;

  const DetailPage({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBlack,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: colorWhite),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: context.padAll(16),
            child: details["image"] != null
                ? Image.network("${imageUrl}${details["image"]}")
                : Image.asset(
                    "${appImage}picture.png",
                    height: 100,
                    width: 100,
                  ),
          ),
          Padding(
            padding: context.padxy(16, 8),
            child: CommonText(
              data: details["name"],
              fontSize: 30,
              fontWeight: FontWeight.bold,
              textColor: colorWhite,
            ),
          ),

          Padding(
            padding: context.padxy(16, 8),
            child: Row(
              spacing: 8,
              children: [
                Icon(Icons.star, color: Colors.amber.shade700),
                CommonText(
                  data: details["rating"].toStringAsFixed(1),
                  fontWeight: FontWeight.bold,
                  textColor: colorWhite,
                ),
              ],
            ),
          ),
          if (details["overview"] != null)
            Padding(
              padding: context.padAll(16),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  CommonText(
                    data: "About the Movie",
                    fontSize: 20,
                    textColor: colorWhite,
                    fontWeight: FontWeight.bold,
                  ),
                  if (details["overview"] != null)
                    CommonText(data: details["overview"] ?? "",textColor: colorWhite10,),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
