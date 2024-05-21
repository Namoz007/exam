import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterDepartments extends StatelessWidget {
  String text;
  String imgLocation;

  EnterDepartments({required this.text, required this.imgLocation});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          border: Border.all(color: Color(0xFFE9EAF0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(imgLocation),
                SizedBox(width: 12.w,),
                Text(text,style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp,),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
