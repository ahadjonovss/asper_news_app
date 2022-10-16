import 'dart:ui';

import 'package:asper_news/pages/home_page_1.1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/project_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then(
            (value) => Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())));

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: SvgPicture.asset(Images.app_logo,width: 140.w ,),
              ),
              Text("Aster News",style: TextStyle(fontSize: 40.sp,color: Color(0xFF0768B5),fontWeight: FontWeight.w700),)
            ],
          ),
        ),
      )


    );
  }
}
