import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class InstagramPage extends StatelessWidget {
  List imgs = [
    'instagram_first_img',
    'instagram_second_img',
    'instagram_threed_img',
    'instagram_fourth_img',
    'instagram_fifth_img',
    'instagram_sixth_img',
    'instagram_seventh_img',
    'instagram_eighth_img',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('INSTAGRAM',style: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 16.sp),),

        SizedBox(height: 20.h,),

        Wrap(
          runSpacing: 5.h,
          spacing: 5.w,
          children: [
            for(int i = 0; i < imgs.length;i++)
              Container(
                width: 86.w,
                height: 86.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/imgs/${imgs[i]}.png'),
                    fit: BoxFit.contain
                  )
                ),
              )
          ],
        )
      ],
    );
  }
}


class FollowMe extends StatelessWidget {
  List<Map<String,dynamic>> socialApps = [
    {'name':'Facebook','color': Color(0xFF4267B2),'img':'facebook_new_logo'},
    {'name':'Twitter','color': Color(0xFF1DA1F2),'img':'twitter_logo'},
    {'name':'Whatsapp','color': Color(0xFF4FCE5D),'img':'whatsapp_logo'},
    {'name':'Reddit','color': Color(0xFFF74101),'img':'reddit_logo'},
    {'name':'Pinterest','color': Color(0xFFE60023),'img':'pinterest_logo'},
    {'name':'Linkedin','color': Color(0xFF0077B5),'img':'linkedin_logo'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('FOLLOW ME',style: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 16.sp),),
        SizedBox(height: 16.h,),
        Wrap(
          spacing: 10.w,
          runSpacing: 10.h,
          children: [
            for(int i = 0; i < socialApps.length;i++)
              InkWell(
                onTap: (){},
                child: Container(
                  height: 44.h,
                  width: 179.w,
                  decoration: BoxDecoration(
                    color: socialApps[i]['color'],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/imgs/${socialApps[i]['img']}.svg'),

                      SizedBox(width: 5.w,),

                      Text(socialApps[i]['name'],style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.white),)
                    ],
                  ),
                ),
              )
          ],
        )
      ],
    );
  }
}
