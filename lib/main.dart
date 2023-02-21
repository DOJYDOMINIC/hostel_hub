
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'login/typeselection.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Loadingpage(),
  ));
}

class Loadingpage extends StatelessWidget {
  const Loadingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds:4 ), ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder:  (context) => Hostel_hub(),)));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/egor-myznik--2MiaNLSWic-unsplash.jpg"))),
        child: Center(
          child: LoadingAnimationWidget.staggeredDotsWave(color: Colors.white, size: 150),
        ),
      ),
    );
  }
}

