import 'package:edstem/core/style/colors.dart';
import 'package:flutter/material.dart';

class HomeField extends StatelessWidget {
  const HomeField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: colorGrey,
        prefixIcon: Icon(Icons.search),
        hintText: "Search movie...",
        border: OutlineInputBorder(
          borderSide: BorderSide(color: colorBlack,width: 0),
          borderRadius: BorderRadius.circular(16), 
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorBlack,width: 0),
          borderRadius: BorderRadius.circular(16), 
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorBlack,width: 0),
          borderRadius: BorderRadius.circular(16), 
        ),
      ),
    );
  }
}
