import 'package:flutter/material.dart';

// ignore: must_be_immutable
class buttonApp extends StatelessWidget {
  buttonApp(this.function, this.imageA, {super.key});
  void Function() function;

  final String imageA;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145.0,
      width: 154.0,
      child: TextButton(onPressed: function, child: Image.asset(imageA)),
    );
  }
}
