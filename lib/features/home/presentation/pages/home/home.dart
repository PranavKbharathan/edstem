import 'package:edstem/core/constants/strings.dart';
import 'package:edstem/core/style/colors.dart';
import 'package:edstem/features/home/presentation/bloc/home_bloc.dart';
import 'package:edstem/features/home/presentation/pages/detail/detail.dart';
import 'package:edstem/features/home/presentation/widgets/home_field.dart';
import 'package:edstem/shared/extensions/build_context.dart';
import 'package:edstem/shared/widgets/common_snack.dart';
import 'package:edstem/shared/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listenWhen: (p, c) => p.searchMovie != c.searchMovie,
      listener: (context, state) {
        state.searchMovie.fold(
          () => {},
          (a) => a.fold(
            (l) => l.map(
              network: (value) => commonSnack(context, value.message),
              server: (value) => commonSnack(context, value.message),
            ),
            (r) {
              if (r.results != null && r.results!.isEmpty) {
                commonSnack(context, "No movies found.");
              }
            },
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          actionsPadding: context.padAll(8),
          backgroundColor: colorBlack,
          leading: Padding(
            padding: context.padAll(4),
            child: CircleAvatar(
              backgroundImage: AssetImage("${appImage}person.jpg"),
            ),
          ),
          title: CommonText(
            data: "Hello Pranav",
            textColor: colorWhite,
            fontWeight: FontWeight.bold,
          ),
          actions: [Icon(Icons.notifications, color: colorWhite)],
        ),
        body: Column(
          children: [
            Padding(
              padding: context.padxy(16, 24),
              child: HomeField(controller: controller),
            ),
            BlocBuilder<HomeBloc, HomeState>(
              buildWhen: (p, c) =>
                  p.searchMovie != c.searchMovie || p.isLoading != c.isLoading,
              builder: (context, state) {
                if (state.isLoading) {
                  return const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(color: colorWhite),
                    ),
                  );
                }
                return state.searchMovie.fold(
                  () => Expanded(
                    child: Center(
                      child: Image.asset(
                        "${appImage}camera.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  (a) => a.fold(
                    (l) => SizedBox.shrink(),
                    (r) => switch (r.results != null && r.results!.isNotEmpty) {
                      false => Expanded(
                        child: Center(
                          child: Image.asset(
                            "${appImage}camera.png",
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      true => Expanded(
                        child: ListView.builder(
                          itemCount: r.results!.length,
                          itemBuilder: (context, index) => Padding(
                            padding: context.padAll(8),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: colorBlack,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(color: colorWhite10, blurRadius: 8),
                                ],
                              ),
                              child: Padding(
                                padding: context.padAll(16),
                                child: Row(
                                  children: [
                                    r.results![index].image != null
                                        ? Image.network(
                                            "$imageUrl${r.results![index].image}",
                                            height: 100,
                                            width: 100,
                                          )
                                        : Image.asset(
                                            "${appImage}picture.png",
                                            height: 100,
                                            width: 100,
                                          ),
                                    Expanded(
                                      child: Column(
                                        spacing: 8,
                                        children: [
                                          CommonText(
                                            data: r.results![index].title!,
                                            textAlign: TextAlign.center,
                                            textColor: colorWhite,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          CommonText(
                                            data: r.results![index].date!,
                                            textColor: colorWhite,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        context.push(
                                          page: DetailPage(
                                            details: {
                                              "name": r.results![index].title,
                                              "image":
                                                  r.results![index].bgImage,
                                              "about":
                                                  r.results![index].overview,
                                              "rating":
                                                  r.results![index].rating,
                                              "overview":
                                                  r.results![index].overview,
                                            },
                                          ),
                                        );
                                        context.hideKeyboard();
                                      },
                                      icon: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
