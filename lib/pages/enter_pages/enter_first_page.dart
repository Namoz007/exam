import 'package:exam/pages/enter_pages/enter_second_page.dart';
import 'package:exam/pages/enter_pages/enter_threed_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterFirstPage extends StatefulWidget {
  const EnterFirstPage({super.key});

  @override
  State<EnterFirstPage> createState() => _EnterFirstPageState();
}

class _EnterFirstPageState extends State<EnterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 102.h,),
          
              SvgPicture.asset('assets/imgs/enter_first_img.svg'),
          
              SizedBox(height: 92.h,),
          
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child:  Text(
                    'Explore thousands of latest news',
                    style: GoogleFonts.nunito(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
          
              SizedBox(height: 16.h,),
          
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Text(
                    'Mauris urna velit, congue et aliquam non, imperdiet id massa. Etiam commodo interdum eros, eget hendrerit ex rhoncus in.',
                    style: GoogleFonts.nunitoSans(
                      color: const Color(0xFF767E94),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),),
          
              SizedBox(height: 54.h,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EnterThreedPage()));
                    },
                    child: Container(
                      height: 48.h,
                      width: 179.w,
                      decoration: const BoxDecoration(
                        color: Color(0xFFE6F0FD),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'SKIP',
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EnterSecondPage()));
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
                            'NEXT',
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
                      width: 24.w,
                      height: 8.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFF0864ED),
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
                      width: 8.w,
                      height: 8.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFFCEE0FB),
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
