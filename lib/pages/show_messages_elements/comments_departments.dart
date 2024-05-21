import 'package:exam/pages/users/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CommentsDepartments extends StatefulWidget {
  const CommentsDepartments({super.key});

  @override
  State<CommentsDepartments> createState() => _CommentsDepartmentsState();
}

class _CommentsDepartmentsState extends State<CommentsDepartments> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text('Comments',style: GoogleFonts.nunito(fontSize: 16.sp,fontWeight: FontWeight.w600),),
                ),
      
              Divider(),
      
              Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 35.h,
                    width: 35.w,
                    child: SvgPicture.asset('assets/imgs/comment_user.svg'),
                  ),
      
                  SizedBox(width: 5.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(commentUsers[0].name,style: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 12.sp),),
      
                          SizedBox(width: 5.w,),
      
                          Container(
                            height: 18.h,
                            width: 7.w,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle
                            ),
                          ),
      
                          SizedBox(width: 5.w,),
      
                          Text(commentUsers[0].time,style: GoogleFonts.nunito(fontSize: 12.sp,fontWeight: FontWeight.w600,color: Color(0xFF767E94)),)
                        ],
                      ),
      
                      SizedBox(height: 8.h,),
      
                      Text(commentUsers[0].comment,style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp),),
      
                      SizedBox(height: 8.h,),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              if(!commentUsers[0].isLike){
                                commentUsers[0].likeCount += 1;
                                commentUsers[0].isLike = true;
                                commentUsers[0].disLike = false;
                              }
                              setState(() {});
                            },
                            child: commentUsers[0].isLike ? SvgPicture.asset('assets/imgs/me_like_icon.svg') : SvgPicture.asset('assets/imgs/like_icon.svg'),
                          ),
      
                          SizedBox(width: 4.w,),
      
                          Text("${commentUsers[0].likeCount}",style: GoogleFonts.nunito(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0xFF636A80)),),
      
                          SizedBox(width: 12.w,),
      
                          InkWell(
                            onTap: (){
                              if(!commentUsers[0].disLike && commentUsers[0].isLike){
                                commentUsers[0].likeCount -= 1;
                                commentUsers[0].disLike = true;
                                commentUsers[0].isLike = false;
                              }else if(!commentUsers[0].disLike){
                                commentUsers[0].disLike = true;
                              }
                              setState(() {});
                            },
                            child: commentUsers[0].disLike ? SvgPicture.asset('assets/imgs/me_dislike_icon.svg') : SvgPicture.asset('assets/imgs/dislike_icon.svg'),
                          ),
      
                          SizedBox(width: 12.w,),
      
                          InkWell(
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/imgs/replay_icon.svg'),
      
                                SizedBox(width: 4.w,),
      
                                Text('Replay',style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 12.sp,color: Color(0xFF636A80)),)
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),),
      
              Divider(),
      
              Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
      
                    Container(
                      height: 35.h,
                      width: 35.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/imgs/${commentUsers[1].img}.png'),
                              fit: BoxFit.contain
                          ),
                          shape: BoxShape.circle
                      ),
                      // child: Image.asset('assets/imgs/comment_user_first.png'),
                    ),
      
                    SizedBox(width: 5.w,),
      
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(commentUsers[1].name,style: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 12.sp),),
      
                            SizedBox(width: 5.w,),
      
                            Container(
                              height: 18.h,
                              width: 7.w,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle
                              ),
                            ),
      
                            SizedBox(width: 5.w,),
      
                            Text(commentUsers[1].time,style: GoogleFonts.nunito(fontSize: 12.sp,fontWeight: FontWeight.w600,color: Color(0xFF767E94)),)
                          ],
                        ),
      
                        SizedBox(height: 8.h,),
      
                        Text(commentUsers[1].comment,style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp),),
      
                        SizedBox(height: 8.h,),
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                                if(!commentUsers[1].isLike){
                                  commentUsers[1].likeCount += 1;
                                  commentUsers[1].isLike = true;
                                  commentUsers[1].disLike = false;
                                }
                                setState(() {});
                              },
                              child: commentUsers[1].isLike ? SvgPicture.asset('assets/imgs/me_like_icon.svg') : SvgPicture.asset('assets/imgs/like_icon.svg'),
                            ),
      
                            SizedBox(width: 4.w,),
      
                            Text("${commentUsers[1].likeCount}",style: GoogleFonts.nunito(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0xFF636A80)),),
      
                            SizedBox(width: 12.w,),
      
                             InkWell(
                               onTap: (){
                                 if(!commentUsers[1].disLike && commentUsers[1].isLike){
                                   commentUsers[1].likeCount -= 1;
                                   commentUsers[1].disLike = true;
                                   commentUsers[1].isLike = false;
                                 }else if(!commentUsers[1].disLike){
                                   commentUsers[1].disLike = true;
                                   commentUsers[1].isLike = false;
                                 }
                                 setState(() {});
                               },
                               child: commentUsers[1].disLike ? SvgPicture.asset('assets/imgs/me_dislike_icon.svg') : SvgPicture.asset('assets/imgs/dislike_icon.svg'),
                            ),
      
                            SizedBox(width: 12.w,),
      
                            InkWell(
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/imgs/replay_icon.svg'),
      
                                  SizedBox(width: 4.w,),
      
                                  Text('Replay',style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 12.sp,color: Color(0xFF636A80)),)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),),
      
              Row(
                children: [
                  Column(
                    children: [
                      // SizedBox(width: 52.w,),
      
                      // Container(
                      //   width: 2,
                      //   height: double.infinity,
                      //   decoration: BoxDecoration(
                      //     color: Colors.grey
                      //   ),
                      // )
                    ],
                  ),
      
                  Column(
                    children: [
                      for(int i = 2; i < commentUsers.length;i++)
                        Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
      
                              Container(
                                height: 35.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/imgs/${commentUsers[i].img}.png'),
                                        fit: BoxFit.contain
                                    ),
                                    shape: BoxShape.circle
                                ),
                              ),
      
                              SizedBox(width: 5.w,),
      
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(commentUsers[i].name,style: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 12.sp),),
      
                                      SizedBox(width: 5.w,),
      
                                      Container(
                                        height: 18.h,
                                        width: 7.w,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            shape: BoxShape.circle
                                        ),
                                      ),
      
                                      SizedBox(width: 5.w,),
      
                                      Text(commentUsers[i].time,style: GoogleFonts.nunito(fontSize: 12.sp,fontWeight: FontWeight.w600,color: Color(0xFF767E94)),)
                                    ],
                                  ),
      
                                  SizedBox(height: 8.h,),
      
                                  Container(
                                    // height: 100.h,
                                    width: 300,
                                    // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Text(commentUsers[i].comment),
                                  ),
      
                                  SizedBox(height: 8.h,),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          if(!commentUsers[i].isLike){
                                            commentUsers[i].likeCount += 1;
                                            commentUsers[i].isLike = true;
                                            commentUsers[i].disLike = false;
                                          }
                                          setState(() {});
                                        },
                                        child: commentUsers[i].isLike ? SvgPicture.asset('assets/imgs/me_like_icon.svg') : SvgPicture.asset('assets/imgs/like_icon.svg'),
                                      ),

                                      SizedBox(width: 4.w,),

                                      Text("${commentUsers[i].likeCount}",style: GoogleFonts.nunito(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0xFF636A80)),),

                                      SizedBox(width: 12.w,),

                                      InkWell(
                                        onTap: (){
                                          if(!commentUsers[i].disLike && commentUsers[i].isLike){
                                            commentUsers[i].likeCount -= 1;
                                            commentUsers[i].disLike = true;
                                            commentUsers[i].isLike = false;
                                          }else if(!commentUsers[i].disLike && !commentUsers[i].isLike){
                                            commentUsers[i].disLike = true;
                                            commentUsers[i].isLike = false;
                                          }
                                          setState(() {});
                                        },
                                        child: commentUsers[i].disLike ? SvgPicture.asset('assets/imgs/me_dislike_icon.svg') : SvgPicture.asset('assets/imgs/dislike_icon.svg'),
                                      ),

                                      SizedBox(width: 12.w,),

                                      InkWell(
                                        child: Row(
                                          children: [
                                            SvgPicture.asset('assets/imgs/replay_icon.svg'),

                                            SizedBox(width: 4.w,),

                                            Text('Replay',style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 12.sp,color: Color(0xFF636A80)),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10.h,),
                                ],
                              ),
                            ],
                          ),),
      
                    ],
                  )
                ],
              )
      
      
      
      
      
      
            ],
          ),
        ),
      ),
    );
  }
}
