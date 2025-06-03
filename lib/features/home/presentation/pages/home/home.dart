import 'package:edstem/core/constants/strings.dart';
import 'package:edstem/core/style/colors.dart';
import 'package:edstem/features/home/presentation/widgets/home_field.dart';
import 'package:edstem/shared/extensions/build_context.dart';
import 'package:edstem/shared/widgets/common_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBlack,
        leading: CircleAvatar(backgroundImage: AssetImage("${appImage}person.jpg"),),
        title: CommonText(
          data: "Hello Pranav",
          textColor: colorWhite,
          fontWeight: FontWeight.bold,
        ),
        actions: [Icon(Icons.notifications, color: colorWhite)],
      ),
      body: Column(
        children: [
          Padding(padding: context.padxy(16, 24), child: HomeField()),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: context.padAll(8),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: colorBlack,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: colorWhite10,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: context.padAll(16),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.network(
                            "https://marketplace.canva.com/EAFTl0ixW_k/1/0/1131w/canva-black-white-minimal-alone-movie-poster-YZ-0GJ13Nc8.jpg",
                          ),
                        ),
                        Column(
                          children: [
                            CommonText(
                              data: "MOVIE NAME",
                              textColor: colorWhite,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            CommonText(
                              data: "Release Date",
                              textColor: colorWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
