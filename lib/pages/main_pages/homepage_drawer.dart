import 'package:exam/pages/main_pages/drawer_controller/bookmark_page.dart';
import 'package:exam/pages/main_pages/drawer_controller/theme_mode_from_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


class HomepageDrawer extends StatefulWidget {
  String fullName;
  String email;

  HomepageDrawer({required this.fullName, required this.email});

  @override
  State<HomepageDrawer> createState() => _HomepageDrawerState();
}

class _HomepageDrawerState extends State<HomepageDrawer> {

  List<Map<String,dynamic>> drawerDepartments = [
    {'icon': 'pen_icon','text':'Edit Profile','page':''},
    {'icon': 'book_mark','text':'Bookmark','page':'BookMarkPage'},
    {'icon': 'rate_icon','text':'Rate this app','page':''},
    {'icon': 'help_center_icon','text':'Help centers','page':''},
    {'icon': 'terms','text':'Terms & Condition','page':''},
    {'icon': 'log_out','text':'Log-out','page':''},
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20),
                    child: Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/imgs/user.png'),
          
                          )
                      ),
                    ),
                    ),
          
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Container(
                                    child: Text(widget.fullName,style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 16.sp),)),
          
                                Text(widget.email,style: GoogleFonts.nunito(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0xFF767E94)),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
          
                SizedBox(height: 10.h,),
          
                Divider(),
          
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ThemeModeFromDrawer()
                ),
          
                Divider(),
          
                SizedBox(height: 20.h,),
          
          
                Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                child: ChooseLanguageFromDrawer(),),
          
                Divider(),
          
                
                for(int i = 0; i < drawerDepartments.length;i++)
                  InkWell(
                    onTap: (){
                      if(drawerDepartments[i]['text'] == 'Bookmark'){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookMarkPage()));
                      }
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/imgs/${drawerDepartments[i]['icon']}.svg'),
          
                              SizedBox(width: 16.w,),
          
                              Text(drawerDepartments[i]['text'],style: GoogleFonts.nunito(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xFF464D61)),)
                            ],
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(bottom: 20,left: 20),
            child: Text('v1.0.678',style: GoogleFonts.nunito(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xFF767E94)),),
          )
        ],
      ),
    );
  }
}
