import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageShare extends StatelessWidget {
  List<Map<String,dynamic>> socialApps = [
    {'name':'Facebook','color': Color(0xFF4267B2),'img':'facebook_logo_img'},
    {'name':'Twitter','color': Color(0xFF1DA1F2),'img':'twitter_logo_img'},
    {'name':'Pinterest','color': Color(0xFFE60023),'img':'pinterest_logo_img'},
    {'name':'Reddit','color': Color(0xFFF74101),'img':'retdit_logo_img'},
    {'name':'Linkedin','color': Color(0xFF0077B5),'img':'linkedin_logo_img'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       border: Border.all(color: Color(0xFFE9EAF0))
     ),
      child: Padding(padding: EdgeInsets.only(left: 20,right: 13,top: 20,bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Share:',style:GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 16.sp),),

          Row(
            children: [
              for(int i = 0; i < socialApps.length;i++)
                InkWell(
                  onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: socialApps[i]['color'],
                          image: DecorationImage(
                              image: AssetImage('assets/imgs/${socialApps[i]['img']}.png')
                          )
                      ),
                    ),
                  ),
                )
            ],
          ),
        ],
      ),),
    );
  }
}

class FeedBackPost extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  String? namaError;
  String? emailEror;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Write your feedback?',style: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 18.sp),),

          SizedBox(height: 20.h,),

          Form(
            key: formKey,
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Your Name',style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400),),
              SizedBox(height: 8.h,),
              Padding(
                padding: const EdgeInsets.only(right: 13),
                child: TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Iltimos ismingizni kiriting';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    errorText: namaError,
                    hintText: 'Full name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 16.h,),
              Text('Email',style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp),),
              SizedBox(height: 8.h,),
              Padding(
                padding: const EdgeInsets.only(right: 13),
                child: TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Iltimos emailingizni kiriting!';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    errorText: emailEror,
                    hintText: 'Email address',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 16.h,),
              Text('Comments',style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp),),
              SizedBox(height: 8.h,),
              Container(
                height: 122.h,
                child: Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: TextFormField(
                    style: GoogleFonts.inter(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Color(0xFF767E94)),
                    decoration: InputDecoration(
                      hintText: 'Write your feedback about this blog...',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.only(top: 110,left: 18)
                    ),
                  ),
                ),
              )
            ],
          )),

          SizedBox(height: 20,),

          InkWell(
            onTap: (){
              if(formKey.currentState!.validate()){

              }
            },
            child: Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0864ED)
                ),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Color(0xFF0864ED)
                    ),
                    child: Text('POST COMMENTS',style: GoogleFonts.inter(fontWeight: FontWeight.w600,fontSize: 14.sp,color: Colors.white),)),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

