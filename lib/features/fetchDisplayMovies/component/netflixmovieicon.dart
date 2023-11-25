import 'package:flutter/material.dart';

class Nicon extends StatelessWidget {
  const Nicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0,
        child: SizedBox(
            height: 45, width: 45, child: Image.asset("assets/appbar.png")));
  }
}
