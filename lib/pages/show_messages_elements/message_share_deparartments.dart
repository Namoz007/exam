import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageShareDeparartments extends StatefulWidget {
  const MessageShareDeparartments({super.key});

  @override
  State<MessageShareDeparartments> createState() => _MessageShareDeparartmentsState();
}

class _MessageShareDeparartmentsState extends State<MessageShareDeparartments> {
  List<Map<String,dynamic>> socialApps = [
    {'name':'Copy link','color':Color(0xFF0864ED),'img':'copy_link_icon'},
    {'name':'Embed','color':Color(0xFF767E94),'img':'embed_icon'},
    {'name':'Facebook','color': Color(0xFF4267B2),'img':'facebook_new_logo'},
    {'name':'Twitter','color': Color(0xFF1DA1F2),'img':'twitter_logo'},
    {'name':'Pinterest','color': Color(0xFFE60023),'img':'pinterest_logo'},
    {'name':'Linkedin','color': Color(0xFF0077B5),'img':'linkedin_logo'},
    {'name':'Whatsapp','color': Color(0xFF4FCE5D),'img':'whatsapp_logo'},
    {'name':'Reddit','color': Color(0xFFF74101),'img':'reddit_logo'},
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 16.h,),
            Text('Share News',style: GoogleFonts.nunito(fontSize: 16.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 16.h,),
            Divider(),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Wrap(
                children: [
                  for(int i = 0;i < socialApps.length;i++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(padding: EdgeInsets.symmetric(horizontal: 26),
                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: socialApps[i]['color'],
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset("assets/imgs/${socialApps[i]['img']}.svg"),
                              ),
                            ),),
      
                            SizedBox(height: 10.h,),
      
                            Text(socialApps[i]['name'],style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 12.sp,color: Color(0xFF464D61)),)
                          ],
                        ),
                      ),
                    )
                ],
              ),
            )
      
          ],
        ),
      ),
    );
  }
}
