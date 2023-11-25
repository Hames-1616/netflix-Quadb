import 'package:flutter/material.dart';
import 'package:netflixassignment/core/dimensions.dart';

class img extends StatelessWidget {
  const img({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/appbar.png");
  }
}

class img2 extends StatelessWidget {
  const img2({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset
    
      ("assets/appbar.png",width: MediaQuery.of(context).size.width/wid(context, 140),height: MediaQuery.of(context).size.height/hei(context, 180),);
  }
}
