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

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _homeFieldController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      final position = _scrollController.position;

      if (position.pixels == position.maxScrollExtent) {
        context.read<HomeBloc>().add(
          HomeEvent.searchMovie(_homeFieldController.text, true),
        );
      }
    });
  }

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
              if (r.results != null && r.results!.isEmpty&&_homeFieldController.text.isNotEmpty) {
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
              child: HomeField(controller: _homeFieldController),
            ),
            BlocBuilder<HomeBloc, HomeState>(
              buildWhen: (p, c) =>
                  p.searchMovie != c.searchMovie || p.isLoading != c.isLoading,
              builder: (context, state) {
                if (state.isLoading && state.movies!.isEmpty) {
                  return const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(color: colorWhite),
                    ),
                  );
                }
                return Expanded(
                  child: state.movies != null && state.movies!.isNotEmpty
                      ? ListView.builder(
                          itemCount: state.isLoading
                              ? state.movies!.length + 1
                              : state.movies!.length,
                          controller: _scrollController,
                          itemBuilder: (context, index) {
                            if (index == state.movies!.length) {
                              return const Padding(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                child: Center(
                                  child: CircularProgressIndicator(
                                    color: colorWhite,
                                  ),
                                ),
                              );
                            }
                            return Padding(
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
                                      state.movies![index].image != null
                                          ? Image.network(
                                              "$imageUrl${state.movies![index].image}",
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
                                              data: state.movies![index].title!,
                                              textAlign: TextAlign.center,
                                              textColor: colorWhite,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            CommonText(
                                              data: state.movies![index].date!,
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
                                                "name":
                                                    state.movies![index].title,
                                                "image": state
                                                    .movies![index]
                                                    .bgImage,
                                                "about": state
                                                    .movies![index]
                                                    .overview,
                                                "rating":
                                                    state.movies![index].rating,
                                                "overview": state
                                                    .movies![index]
                                                    .overview,
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
                            );
                          },
                        )
                      : Center(
                          child: Image.asset(
                            "${appImage}camera.png",
                            height: 100,
                            width: 100,
                          ),
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
