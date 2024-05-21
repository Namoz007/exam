import 'package:exam/pages/main_pages/messegs_show.dart';
import 'package:exam/pages/main_pages/social_share.dart';
import 'package:exam/pages/show_messages_elements/comments_departments.dart';
import 'package:exam/pages/show_messages_elements/message_share_deparartments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class RoomContent extends StatelessWidget {
  String img;
  String messageTitle;
  String text;
  bool isSave;

  RoomContent({required this.img, required this.messageTitle,required this.text,required this.isSave});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessegsShow(img: img, messageTitle: messageTitle, text: text,isSave: isSave,)));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(messageTitle,style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 16.sp,),),
          SizedBox(height: 6.h,),
          Text(text,
            style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 13.sp,color: const Color(0xFF767E94)),)
        ],
      ),
    );
  }
}

class ContentSocialDepartments extends StatefulWidget {
  bool isSave;

  ContentSocialDepartments(this.isSave);

  @override
  State<ContentSocialDepartments> createState() => _ContentSocialDepartmentsState();
}

class _ContentSocialDepartmentsState extends State<ContentSocialDepartments> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.remove_red_eye_outlined,color: Color(0xFF0864ED),size: 20,),

            SizedBox(width: 6.w,),

            Text('25.9k',style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400),),

            SizedBox(width: 16.w,),

            InkWell(
              onTap: (){
                showModalBottomSheet(context: context, builder: (ctx) {
                  return CommentsDepartments();
                });
              },
              child: Row(
                children: [
                  SvgPicture.asset('assets/imgs/message_img.svg'),

                  SizedBox(width: 6.w,),

                  Text('657 Comments',style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400),),
                ],
              ),
            ),
          ],
        ),

        Row(
          children: [
            InkWell(
              onTap: (){
                showModalBottomSheet(context: context, builder: (ctx){
                  return MessageShareDeparartments();
                });
              },
              child: SvgPicture.asset('assets/imgs/share_icon.svg'),
            ),

            SizedBox(width: 15.w,),

            InkWell(
              onTap: (){
                widget.isSave = !widget.isSave;
                setState(() {});
              },
              child: widget.isSave ? SvgPicture.asset('assets/imgs/saved_old_icon.svg') : SvgPicture.asset('assets/imgs/saved_icon.svg'),
            ),
          ],
        )

      ],
    );
  }

}
