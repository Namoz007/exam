import 'package:exam/pages/show_messages_elements/comments_departments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class UsersMessages extends StatelessWidget {
  String img;
  String messageTitle;
  String text;

  UsersMessages({required this.img, required this.messageTitle,required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/imgs/${img}.png'),

        SizedBox(height: 10.h,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,),

              Container(
                child: Text(messageTitle,style: GoogleFonts.nunito(fontSize: 16.sp,fontWeight: FontWeight.w400),),
              ),

              SizedBox(height: 6.h,),
              Container(
                child: Text(text,
                  style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 13.sp,color: const Color(0xFF767E94)),),
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  const Icon(Icons.remove_red_eye_outlined,color: Color(0xFF0864ED),size: 20,),

                  SizedBox(width: 3.w,),

                  Text('25.9k',style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400),),

                  SizedBox(width: 15.w,),

                  InkWell(
                    onTap: (){
                      showModalBottomSheet(context: context, builder: (ctx){
                        return CommentsDepartments();
                      });
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/imgs/message_img.svg'),

                        SizedBox(width: 3.w,),

                        Text('657 Comments',style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ),

                  SizedBox(width: 10.w,),

                  SvgPicture.asset('assets/imgs/technology.svg'),

                  SizedBox(width: 3.w,),

                  Text('Technology',style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400),),

                ],
              ),

              SizedBox(height: 10.h,),

              Container(
                child: Text('How to Become an Interior Designer (and What You Need to Know Before You Do)',
                  style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w600,fontSize: 20.sp),),
              ),

              SizedBox(height: 10.h,),
            ],
          ),
        ),
      ],
    );
  }
}


class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('What is an Interior Designer?',style: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 18.sp),),
              
              SizedBox(height: 8.h,),

              Text('Donec at elit a sem tincidunt interdum in sed quam. In fringilla, massa eget sagittis viverra, sapien tellus mollis libero, nec ullamcorper purus quam ac turpis. ',
              style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xFF636A80)),),
            ],
          ),
        ),

        SizedBox(height: 24.h,),
        
        Text('What Does an Interior Designer Do?',style: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 18.sp),),

        SizedBox(height: 12.h,),

        Container(
          child: Text('Integer id est ut nibh posuere feugiat sit amet at turpis. Ut turpis quam, posuere eu malesuada quis, dapibus nec ligula. Etiam porta lacus nec luctus luctus. Nullam ut vulputate nunc, eu ultrices velit. Morbi sagittis interdum arcu eu feugiat. Nam interdum justo risus,',
          style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xFF636A80)),),
        ),
      ],
    );
  }
}
