import 'package:exam/pages/main_pages/messegs_show.dart';
import 'package:exam/pages/main_pages/room_content.dart';
import 'package:exam/pages/users/bookmarks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BookMarkPage extends StatefulWidget {
  const BookMarkPage({super.key});

  @override
  State<BookMarkPage> createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 52.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back_outlined),
                ),),

                Container(
                    // width: 374,
                    // height: 52.h,
                    alignment: Alignment.center,
                    child: Text('Bookmark(0${saveds.length})',style: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 16.sp),)),

                SizedBox(width: 20,),

              ],
            ),
            SizedBox(height: 16.h,),
            for(int i = 0; i < saveds.length;i++)
              Column(
                children: [
                  Divider(),

                  SizedBox(height: 20.h,),

                  Image.asset('assets/imgs/${saveds[i].img}.png'),

                  SizedBox(height: 16.h,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessegsShow(img: saveds[i].img, messageTitle: saveds[i].messageTitle, text: saveds[i].text,isSave: saveds[i].isSaved,)));
                      },
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(saveds[i].messageTitle,style: GoogleFonts.nunito(fontSize: 16.sp,fontWeight: FontWeight.w400),),
                            SizedBox(height: 6.h,),
                            Text(saveds[i].text, style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Color(0xFF767E94)),),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(20),
                    child: ContentSocialDepartments(saveds[i].isSaved),),
                ],
              ),



          ],
        ),
      ),
    );
  }
}
