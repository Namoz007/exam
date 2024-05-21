import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeModeFromDrawer extends StatelessWidget {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset('assets/imgs/sun_icon.svg'),

            SizedBox(width: 16.w,),

            Text('Dark Mode',style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 16.sp,color: Color(0xFF464D61)),),

          ],
        ),

        Switch(value: isSwitch, onChanged: (value){}),
      ],
    );
  }
}

class ChooseLanguageFromDrawer extends StatefulWidget {
  const ChooseLanguageFromDrawer({super.key});

  @override
  State<ChooseLanguageFromDrawer> createState() => _ChooseLanguageFromDrawerState();
}

class _ChooseLanguageFromDrawerState extends State<ChooseLanguageFromDrawer> {
  String language = 'English';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset('assets/imgs/usa_flag.svg'),

            SizedBox(width: 16.w,),

            Text('Language',style: GoogleFonts.nunito(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xFF464D61)),)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            DropdownButton(items: <DropdownMenuItem<String>>[
              DropdownMenuItem(value: 'English',child: Text('English')),
              DropdownMenuItem(value: 'Russian',child: Text('Russian')),
              DropdownMenuItem(value: 'Uzbek',child: Text('Uzbek')),
              DropdownMenuItem(value: 'Mandarin',child: Text('Mandarin'),)
            ], onChanged: (value){
              language = value!;
              setState(() {});
            },
              icon: Icon(Icons.keyboard_arrow_down_outlined),
              padding: EdgeInsets.zero,
              hint:Text(language,style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp),),),
          ],
        )
      ],
    );
  }
}
