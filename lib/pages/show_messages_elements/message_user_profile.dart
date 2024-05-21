import 'package:exam/pages/show_messages_elements/message_share_deparartments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfileFromMessage extends StatefulWidget {
  bool isSave;

  UserProfileFromMessage(this.isSave);

  @override
  State<UserProfileFromMessage> createState() => _UserProfileFromMessageState();
}

class _UserProfileFromMessageState extends State<UserProfileFromMessage> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/imgs/user_picture.png'),
                      fit: BoxFit.contain
                  )
              ),
            ),

            SizedBox(width: 5.w,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Kevin Gilber',style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w600),),

                Container(
                  height: 18.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Aug 3,2021',style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 12.sp,color: Color(0xFF464D61)),),

                      Container(
                        width: 7.w,
                        height: 18.h,
                        decoration: BoxDecoration(
                            color: Color(0xFFAEB3C2),
                            shape: BoxShape.circle
                        ),
                      ),

                      Text('8 mins read',style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 12.sp,color: Color(0xFF464D61)),),

                    ],
                  ),
                )
              ],
            ),
          ],
        ),

        Row(
          children: [
            InkWell(
              onTap: (){
                showModalBottomSheet(context: context, builder: (context) {
                  return MessageShareDeparartments();

                });
              },
              child: SvgPicture.asset('assets/imgs/share_icon.svg'),
            ),

            SizedBox(width: 20.w,),

            InkWell(
              onTap: (){
                widget.isSave = !widget.isSave;
                setState((){});
              },
              child: widget.isSave ? SvgPicture.asset('assets/imgs/saved_old_icon.svg') : SvgPicture.asset('assets/imgs/saved_icon.svg'),
            )
          ],
        )
      ],
    );
  }
}


class CommmetsTitle extends StatelessWidget {
  const CommmetsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text('657 Comments',style: GoogleFonts.nunito(fontSize: 16.sp,fontWeight: FontWeight.w400),)
          ],
        ),


        InkWell(
          child: SvgPicture.asset('assets/imgs/down_icon.svg'),
        )
      ],
    );
  }
}
