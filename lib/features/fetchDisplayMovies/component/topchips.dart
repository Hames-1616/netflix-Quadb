import 'package:flutter/material.dart';

class Topschips extends StatelessWidget {
  final String text;
  const Topschips({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      height: 30,
      width: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          border: Border.all(color: Colors.grey)),
      child:  Text(text,style: const TextStyle(color: Colors.grey),),
    );
  }
}
