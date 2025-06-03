import 'package:edstem/core/style/colors.dart';
import 'package:edstem/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeField extends StatelessWidget {
  final TextEditingController controller;
  const HomeField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(color: colorWhite),
      decoration: InputDecoration(
        filled: true,
        fillColor: colorGrey,
        prefixIcon: Icon(Icons.search),
        hintText: "Search movie...",

        border: OutlineInputBorder(
          borderSide: BorderSide(color: colorBlack, width: 0),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorBlack, width: 0),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorBlack, width: 0),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onChanged: (value) {
        context.read<HomeBloc>().add(
          HomeEvent.searchMovie(controller.text, false),
        );
      },
    );
  }
}
