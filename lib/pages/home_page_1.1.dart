import 'package:asper_news/widgets/news_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/project_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white.withOpacity(0.95),
      drawer: Drawer(),
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(child: SvgPicture.asset(Images.app_logo,width: 24.w,)),
          SizedBox(width: 120.w,),
          Icon(Icons.search,size: 24.r,),
          SizedBox(width: 36.w,),
          Container(child: SvgPicture.asset(Images.account_icon,width: 24.w,)),
          SizedBox(width: 8.w,),
          Center(child: Text("My account",style: TextStyle(fontSize: 15.sp,color: Colors.black),)),
          SizedBox(width: 16,)

        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(24).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Top Stories For You",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w700),),
            ListView.builder(
              itemCount: 10,
                itemBuilder: (context, index) => newsbar(context),)

          ],
        ),
        ),
      ),
    );
  }
}
