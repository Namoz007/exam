import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NatureAboutMessage extends StatefulWidget {
  const NatureAboutMessage({super.key});

  @override
  State<NatureAboutMessage> createState() => _NatureAboutMessageState();
}

class _NatureAboutMessageState extends State<NatureAboutMessage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/imgs/nature_img.png'),
        SizedBox(height: 10.h,),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text('1. Educate your eye. You can hone your eye at any age, whether you\'re just entering design school or coming to interior design later in life.',
              style: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 18,),),

              SizedBox(height: 12.h,),

              Text('Integer pulvinar lacus ac consequat dapibus. Aenean tristique accumsan nunc et lobortis. Nullam a lorem ligula. Pellentesque sit amet pretium ligula, in ullamcorper ligula.',
              style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xFF636A80)),),

              SizedBox(height: 12.h,),

              Text('Morbi rutrum sagittis augue. Donec augue lorem, gravida ac diam a, accumsan egestas mauris. Fusce ut tortor nec nulla scelerisque vulputate. Duis pharetra pretium felis vitae interdum. Quisque et erat risus. Donec a ante felis. Aliquam id felis hendrerit elit elementum bibendum. Quisque turpis arcu, aliquam ac lectus et, fringilla semper sem. Nulla congue vitae orci ac aliquet. Aliquam eget blandit tellus, vel sagittis mi. Nam leo ipsum, scelerisque a turpis ac, feugiat rhoncus erat. Nulla ante orci, accumsan sed mauris vel, suscipit porta eros.',
                style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xFF636A80)),),

            ],
          ),
        ),

        SizedBox(height: 24.h,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Container(
                  height: 180.h,
                width: 180.w,
                  child: Image.asset('assets/imgs/message_picture.png'),),
              Container(
                height: 180.h,
                width: 180.w,
                child: Image.asset('assets/imgs/message_picture.png'),),
            ],
          ),
        ),

        SizedBox(height: 24.h,),

        Padding(padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2. Study interior design.',style: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 18.sp),),
            SizedBox(height: 8.h,),
            Text('Morbi rutrum sagittis augue. Donec augue lorem, gravida ac diam a, accumsan egestas mauris. Fusce ut tortor nec nulla scelerisque vulputate. Duis pharetra pretium felis vitae interdum. Quisque et erat risus. Donec a ante felis. Aliquam id felis hendrerit elit elementum bibendum. Quisque turpis arcu, aliquam ac lectus et, fringilla semper sem. Nulla congue vitae orci ac aliquet. Aliquam eget blandit tellus, vel sagittis mi. Nam leo ipsum, scelerisque a turpis ac, feugiat rhoncus erat. Nulla ante orci, accumsan sed mauris vel, suscipit porta eros.',
            style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xFF636A80)),)
          ],
        ),)

      ],
    );
  }
}
