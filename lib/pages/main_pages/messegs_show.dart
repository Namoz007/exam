import 'package:exam/pages/show_messages_elements/message_share.dart';
import 'package:exam/pages/show_messages_elements/message_user_profile.dart';
import 'package:exam/pages/show_messages_elements/nature_about_message.dart';
import 'package:exam/pages/show_messages_elements/news_for_message.dart';
import 'package:exam/pages/show_messages_elements/users_messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MessegsShow extends StatefulWidget {
  String img;
  String messageTitle;
  String text;
  bool isSave;

  MessegsShow({required this.img,required this.messageTitle,required this.text,required this.isSave});

  @override
  State<MessegsShow> createState() => _MessegsShowState();
}

class _MessegsShowState extends State<MessegsShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 52.h,),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 52.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back_outlined),
                    ),

                    Text('How to Become an Interior Desig...',style: GoogleFonts.nunito(fontSize: 16.sp,fontWeight: FontWeight.w600),),

                    SizedBox()
                  ],
                ),
              ),
            ),

            SizedBox(height: 20.h,),

            UsersMessages(img: widget.img, messageTitle: widget.messageTitle, text: widget.text),

            Divider(),

            Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                decoration: BoxDecoration(
                ),
                child: UserProfileFromMessage(widget.isSave)
            ),

            Divider(),

            Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: CommmetsTitle(),),

            Divider(),

            SizedBox(height: 24,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Comments(),
            ),

            SizedBox(height: 12.h,),

            NatureAboutMessage(),

            SizedBox(height: 36.h,),

            MessageShare(),

            SizedBox(height: 50,),

            FeedBackPost(),

            SizedBox(height: 32.h,),

            Padding(padding: EdgeInsets.only(left: 7),
            child: NewsForMessage(),)

          ],
        ),
      ),
    );
  }
}
