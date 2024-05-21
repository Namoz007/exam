import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsPage extends StatelessWidget {
  List<Map<String,dynamic>> elements = [
    {
      'text':'Proin vitae suscipit nisi. Mauris odio nisi, posuere ac viverra eu, molest... ',
      'viewers':'32.7k','commets':'94','img':'assets/imgs/first_img.png'
    },{
      'text':'Cras tempor rutrum sem sit amet congue. ',
      'viewers':'65.6k','commets':'52','img':'assets/imgs/second_img.png'
    },{
      'text':'Cras tempor rutrum sem sit amet congue. ',
      'viewers':'65.6k','commets':'52','img':'assets/imgs/second_img.png'
    },
  ];


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('LATEST NEWS',style: GoogleFonts.nunito(fontSize: 16.sp,fontWeight: FontWeight.w600),),

          SizedBox(height: 20.h,),

          for(int i = 0;i < elements.length;i++)
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE9EAF0))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),

                    Container(
                      width: 234.w,
                      child: Column(
                        children: [
                          Text(elements[i]['text'],
                            style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp,),),

                          Row(
                            children: [
                              SvgPicture.asset('assets/imgs/eye_black.messsage_img.svg'),
                              SizedBox(width: 3.w,),
                              Text(elements[i]['viewers'],style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xFF767E94)),),
                              SizedBox(width: 10.w,),
                              SvgPicture.asset('assets/imgs/eye_black.messsage_img.svg'),
                              SizedBox(width: 3.w,),
                              Text('${elements[i]['commets']} Comments',style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xFF767E94)),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100.h,
                      width: 97.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(elements[i]['img']),
                              fit: BoxFit.contain
                          )
                      ),
                    )
                  ],
                ),
              ),
            ),

        ],
      ),
    );
  }
}
