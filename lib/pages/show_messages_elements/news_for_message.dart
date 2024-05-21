import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsForMessage extends StatefulWidget {
  const NewsForMessage({super.key});

  @override
  State<NewsForMessage> createState() => _NewsForMessageState();
}

class _NewsForMessageState extends State<NewsForMessage> {
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
    return Container(
      color: Color(0xFFF5F7FA),
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 32.h,),

          Center(child: Text('LATEST NEWS',style: GoogleFonts.nunito(fontSize: 16.sp,fontWeight: FontWeight.w600),)),

          SizedBox(height: 20.h,),

          for(int i = 0;i < elements.length;i++)
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20   ),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE9EAF0))
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding: EdgeInsets.only(bottom: 0,),
                                  child: Container(
                                    child: Text(elements[i]['text'],
                                      style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp,),),
                                  ),),

                                  Row(
                                    children: [
                                      SvgPicture.asset('assets/imgs/eye_black.svg'),
                                      SizedBox(width: 3.w,),
                                      Text(elements[i]['viewers'],style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xFF767E94)),),
                                      SizedBox(width: 10.w,),
                                      SvgPicture.asset('assets/imgs/comments_black_icon.svg'),
                                      SizedBox(width: 3.w,),
                                      Text('${elements[i]['commets']} Comments',style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xFF767E94)),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            decoration: BoxDecoration(
                                // image: DecorationImage(
                                //     image: AssetImage(elements[i]['img']),
                                //     fit: BoxFit.contain
                                // )
                            ),
                            child: Image.asset('${elements[i]['img']}',width: 100,),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 18.h,),
              ],
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0864ED),
                ),
                child: Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('VIEW ALL',style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Colors.white),),
                    SizedBox(width: 12.w,),
                    Icon(CupertinoIcons.arrow_right,color: Colors.white,)
                  ],
                ),),
              ),
            ),
          ),

          SizedBox(height: 10.h,)

        ],
      ),
    );
  }
}
