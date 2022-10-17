import 'dart:convert';

import 'package:asper_news/widgets/news_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:http/http.dart' as http;

import '../models/news_model.dart';
import '../utils/project_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

Future<News?>? getData()async{
  String url="https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=465c997f9c95497c81e8d8b5f700b9f7";
  var response=  await http.get(Uri.parse(url));

  if(response.statusCode==200){
    Map<String, dynamic> json =
    jsonDecode(response.body) as Map<String, dynamic>;
    return News.fromJson(json);
  }

  return News(articles: List.empty());

}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return Container(
              child: Text("Waiting"),
            );
          }
          if(snapshot.hasData){
            return SafeArea(
              child: Container(
                padding: EdgeInsets.all(24).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Top Stories For You",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w700),),
                    SizedBox(height: 12.h,),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: (snapshot.data?.articles?.length)??0,
                        itemBuilder: (context, index) => newsbar(context,snapshot.data!.articles![index]),),
                    )

                  ],
                ),
              ),
            );
          }
          return Container();
        },
      )
    );
  }
}


