import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/project_images.dart';

Widget newsbar(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.only(left: 23,top: 17,bottom: 17,right: 16).r,
    height: MediaQuery.of(context).size.height*0.22,
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Colors.white,

    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 170.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Samsung Galaxy F22 launched in India",
                style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),
                maxLines: 2,
              ),
              SizedBox(height: 8,),
              Text("Samsung Galaxy F22 has been launched in India. The new smartphone has been priced in the mid-range segment.",
                style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400),
                maxLines: 4,
              ),
              SizedBox(height: 20.h,),
              Container(
                width: 120.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sport Biz",style: TextStyle(fontSize: 12.sp,color: Colors.grey),),
                    Text(" • ",style: TextStyle(fontSize: 12.sp,color: Colors.grey),),
                    Text("Sport Biz",style: TextStyle(fontSize: 12.sp,color: Colors.grey),)

                  ],
                ),
              )
            ],
          ),
        ),
        Column(
          children: [
            Container(
              width: 100.w,
              height: 110.h,
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4).r),
                  image: DecorationImage(
                      image: AssetImage('assets/images/img.png'),
                      fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 70.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(Images.share_icon),
                  SvgPicture.asset(Images.more_icon),

                ],
              ),
            )

          ],
        )

      ],
    ),

  );
}