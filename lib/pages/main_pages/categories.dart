import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class Categories extends StatelessWidget {

  List<Map<String,dynamic>> categories = [
    {'name':'Business','icon': 'assets/imgs/business_icon.svg','color' : Color(0xFFE4F9E0)},
    {'name':'Office Productivy','icon': 'assets/imgs/office_icon.svg','color' : Color(0xFFFFE5E5)},
    {'name':'Contents','icon': 'assets/imgs/contents_icon.svg','color' : Color(0xFFE6F0FD)},

  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 20.w,),
          for(int i = 0; i < categories.length;i++)
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.all(16),
                  width: 179.w,
                  height: 92.h,
                  decoration: BoxDecoration(
                    color: categories[i]['color'],
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('${categories[i]['icon']}'),

                      Text(categories[i]['name'],style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp),)
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('TOP CATEGORY',style: GoogleFonts.nunito(fontSize: 16.sp,fontWeight: FontWeight.w600),),

          InkWell(
            onTap: (){},
            child: Row(
              children: [
                Text('View all',style: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 12.sp,color: Color(0xFF0864ED)),),
                SizedBox(width: 5.w,),
                SvgPicture.asset('assets/imgs/next_icon.svg')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
