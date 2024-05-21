import 'package:exam/pages/main_pages/categories.dart';
import 'package:exam/pages/main_pages/homepage_content.dart';
import 'package:exam/pages/main_pages/homepage_drawer.dart';
import 'package:exam/pages/main_pages/news_page.dart';
import 'package:exam/pages/main_pages/room_content.dart';
import 'package:exam/pages/main_pages/search.dart';
import 'package:exam/pages/main_pages/social_share.dart';
import 'package:exam/pages/users/bookmarks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  String fullName;
  String email;
  String password;

  HomePage({required this.fullName, required this.email, required this.password});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            _scaffoldKey.currentState?.openDrawer();
          },
          icon: Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/imgs/user.png")
              )
            ),
          ),
        ),
        title: Search(),
      ),
      drawer: HomepageDrawer(fullName: widget.fullName, email: widget.email),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h,),

            Image.asset('assets/imgs/room_img.png'),

            SizedBox(height: 20.h,),

            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: RoomContent(img: saveds[3].img, messageTitle: saveds[3].messageTitle, text: saveds[3].text,isSave: saveds[3].isSaved,),),

            SizedBox(height: 20.h,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: ContentSocialDepartments(false),
              ),
            ),

            SizedBox(height: 20.h,),

            Divider(),

            SizedBox(height: 32.h,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CategoryTitle(),
            ),

            SizedBox(height: 10.h,),

            Categories(),

            SizedBox(height: 32.h,),

            Row(
              children: [
                SizedBox(width: 20.w,),

                Text('MOST READ',style: GoogleFonts.nunito(fontSize: 16.sp,fontWeight: FontWeight.w600),)
              ],
            ),

            SizedBox(height: 16.h,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFE9EAF0))
                ),
                child: HomepageContent(),
              ),
            ),

            SizedBox(height: 18.h,),

            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: HomePageImgContents(),),

            SizedBox(height: 32.w,),

            Divider(),

            SizedBox(height: 32.h,),

            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: InstagramPage(),),

            Divider(),

            Padding(padding: EdgeInsets.all(20),
              child: FollowMe(),),

            Divider(),

            Padding(padding: EdgeInsets.all(20),
            child: NewsPage(),),
          ],
        ),
      ),
    );
  }
}
