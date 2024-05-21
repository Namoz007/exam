import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageContent extends StatelessWidget {
  const HomepageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/imgs/homepage_content_img.png'),

        SizedBox(height: 16.h,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            child: Column(
              children: [
                Text('Proin vitae suscipit nisi. Mauris odio nisi, posuere ac viverra eu, molest... ',style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 16.sp),),
                SizedBox(height: 8.h,),
                Text('Phasellus interdum neque nunc, non tempor dui auctor eu. Mauris tincidunt tincidunt odio, eu elemem tellus Curabitur blandit nisl.',style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xFF767E94),)),
              ],
            ),
          ),
        ),

        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Row(
            children: [
              InkWell(
                onTap: (){},
                child: Row(
                  children: [
                    SvgPicture.asset('assets/imgs/eye_black.svg',),
                    SizedBox(width: 3.w,),
                    Text('32.7k',style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Color(0xFF767E94)),),
                  ],
                ),
              ),
              SizedBox(width: 10.w,),
              InkWell(
                onTap: (){},
                child: Row(
                  children: [
                    SvgPicture.asset('assets/imgs/comments_black_icon.svg',),
                    SizedBox(width: 3.w,),
                    Text('94',style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Color(0xFF767E94)),),
                  ],
                ),
              )
            ],
          ),
        ),

        SizedBox(height: 10,),
      ],
    );
  }
}


class HomePageImgContents extends StatelessWidget {
  List<Map<String,dynamic>> elements = [
    {
      'text':'Proin vitae suscipit nisi. Mauris odio nisi, posuere ac viverra eu, molest... ',
      'viewers':'32.7k','commets':'94','img':'assets/imgs/first_img.png'
    },{
      'text':'Cras tempor rutrum sem sit amet congue. ',
      'viewers':'65.6k','commets':'52','img':'assets/imgs/second_img.png'
    },{
      'text':'Aenean et enim quis nulla interdum posuere class aptent',
      'viewers':'384k','commets':'3.2k','img':'assets/imgs/threed_img.png'
    },{
      'text':'Aenean et enim quis nulla interdum posuere class aptent',
      'viewers':'384k','commets':'3.2k','img':'assets/imgs/threed_img.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(int i = 0; i< elements.length;i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE9EAF0))
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
                      child: Container(
                        child: Column(
                          children: [
                            Text(elements[i]['text'],
                            style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp,),),
                            SizedBox(height: 8.h,),
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
        GestureDetector(
          onTap: (){},
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFE6F0FD)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('LOAD MORE',style: GoogleFonts.inter(fontWeight: FontWeight.w600,fontSize: 14.sp,color: Color(0xFF0864ED)),),
                SizedBox(width: 5.w,),
                Padding(padding: EdgeInsets.symmetric(vertical: 12),
                child: SvgPicture.asset('assets/imgs/loading.svg'),)
              ],
            ),
          ),
        )
      ],
    );
  }
}
