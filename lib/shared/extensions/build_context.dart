import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  //ScreenHeight
  double get screenHeight => MediaQuery.sizeOf(this).height;
  //ScreenWidth
  double get screenWidth => MediaQuery.sizeOf(this).width;
  //Navigation
  push<T>({required Widget page}) =>
      Navigator.push(this, MaterialPageRoute(builder: (context) => page));

  pushReplacement({required Widget page}) => Navigator.pushReplacement(
    this,
    MaterialPageRoute(builder: (context) => page),
  );
  pushAndRemoveUntil({required Widget page}) => Navigator.pushAndRemoveUntil(
    this,
    MaterialPageRoute(builder: (context) => page),
    (Route<dynamic> route) => false,
  );

  void pop([String? data]) => Navigator.pop(this, data);

  popUntil(String name) => Navigator.popUntil(this, ModalRoute.withName(name));

  //SnackBar

  snackBar({required String message, int? duration}) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: Text(message),
          duration: Duration(seconds: duration ?? 2),
        ),
      );

  //Padding

  EdgeInsets padAll(double size) => EdgeInsets.all(size);
  EdgeInsets padxy(double x, double y) =>
      EdgeInsets.symmetric(horizontal: x, vertical: y);
  EdgeInsets padOnly({double? l, double? r, double? t, double? b}) =>
      EdgeInsets.only(left: l ?? 0, right: r ?? 0, top: t ?? 0, bottom: b ?? 0);

  SizedBox height(double size) => SizedBox(height: size);
  SizedBox width(double size) => SizedBox(width: size);

  void hideKeyboard() => FocusManager.instance.primaryFocus?.unfocus();
}
