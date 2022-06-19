import 'dart:html';

import 'package:drc_tea_canteen/base/constants/app_images.dart';
import 'package:drc_tea_canteen/widgets/image_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "/SplashScreen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<SplashScreen>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: const ImageView(image: AppImages.splashLogo , imageType: ImageType.asset,boxFit: BoxFit.cover),
          )
        ],
        ),
      ),
    );
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      //Navigator.of(context).pushAndRemoveUntil(LoginScreen.route(), (Route<dynamic> route) => false);
    });
  }

  @override
  void dispose() {

  }
}
