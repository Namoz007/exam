import 'package:exam/pages/authorizate/login_page.dart';
import 'package:exam/pages/authorizate/sign_up_page.dart';
import 'package:exam/pages/enter_pages/enter_first_page.dart';
import 'package:exam/pages/enter_pages/enter_second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';


class EnterThreedPage extends StatefulWidget {
  const EnterThreedPage({super.key});

  @override
  State<EnterThreedPage> createState() => _EnterThreedPageState();
}

class _EnterThreedPageState extends State<EnterThreedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
          
              SizedBox(height: 112.h,),
          
          
              SvgPicture.asset('assets/imgs/enter_threed_img.svg'),
          
              SizedBox(height: 91.5,),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Text(
                    'Bookmark, share & comments on news',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
          
              SizedBox(height: 16.h,),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.zero,
                  child: Text(
                    'Quisque vitae finibus metus. Sed non placerat neque. Phasellus erat ante, auctor vel scelerisque vitae, facilisis sed nisi. ',
                    style: GoogleFonts.nunitoSans(
                      color: const Color(0xFF767E94),
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          
              SizedBox(height: 54.h,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpPage()));
                    },
                    child: Container(
                      height: 48.h,
                      width: 179.w,
                      decoration: const BoxDecoration(
                        color: Color(0xFFE6F0FD),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'REGISTER NOW',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          color: const Color(0xFF0864ED),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));
                    },
                    child: Container(
                      height: 48.h,
                      width: 179.w,
                      decoration: const BoxDecoration(
                        color: Color(0xFF0864ED),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'LOGIN',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          const Icon(
                            CupertinoIcons.arrow_right,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
          
              SizedBox(height: 32.h,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EnterFirstPage()));
                    },
                    child: Container(
                      width: 8.w,
                      height: 8.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFFCEE0FB),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  SizedBox(width: 6.w),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EnterSecondPage()));
                    },
                    child: Container(
                      width: 8.w,
                      height: 8.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFFCEE0FB),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  SizedBox(width: 6.w),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EnterThreedPage()));
                    },
                    child: Container(
                      width: 24.w,
                      height: 8.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFF0864ED),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),

    );

  }
}
