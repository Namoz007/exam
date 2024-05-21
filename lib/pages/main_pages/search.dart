import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 48.h,
              width: 309.w,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Container(
                    height: 10,
                    width: 10,
                    child: SvgPicture.asset('assets/imgs/search.svg',width: 10,fit: BoxFit.none),
                  ),
                  hintText: 'Search...',
                ),
              )
          )
        ],
      ),
    );
  }
}
