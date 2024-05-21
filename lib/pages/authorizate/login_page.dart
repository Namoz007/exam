import 'package:exam/pages/authorizate/sign_up_page.dart';
import 'package:exam/pages/main_pages/homepage.dart';
import 'package:exam/pages/users/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String? emailError;
  String? passwordError;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(width: 20.w,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back,size: 24.sp,),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const SignUpPage()));
            },
            child: Text('Create account',style: GoogleFonts.nunito(fontSize: 16,fontWeight: FontWeight.w600),),
          ),
          SizedBox(width: 20.w,),
        ],
      ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),

              SizedBox(height: 40.h,),

              Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('WELCOME BACK!',style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w600,fontSize: 12.sp,color: const Color(0xFF767E94)),),

                    SizedBox(height: 8.h,),

                    Text('Login',style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w600,fontSize: 32.sp),),

                    SizedBox(height: 32.h),

                    Text('Email',style: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 14.sp,color: const Color(0xFF191F33)),),

                    SizedBox(height: 8.h,),

                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: email,
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'Please return email addres';
                              }
                              if(value.contains('@')){
                                return null;
                              }else{
                                return '@ element not find from email address';
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              errorText: emailError,
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)
                              ),
                              hintText: 'Email address',
                              prefixIcon: SvgPicture.asset('assets/imgs/email.svg',fit: BoxFit.none,),
                              border: const OutlineInputBorder(),

                            ),
                          ),

                          SizedBox(height: 18.h,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Password',style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400,color: const Color(0xFF191F33)),),

                              InkWell(onTap: (){},child: Text('Forgot Password',style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp,color: const Color(0xFF0864ED)),))
                            ],
                          ),

                          SizedBox(height: 8.h,),

                          TextFormField(
                            controller: password,
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'Please return password';
                              }
                              if(value.length < 8){
                                return 'The password must contain at least 8 elements';
                              }

                              return null;
                            },
                            decoration: InputDecoration(
                              errorText: passwordError,
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                              ),
                              prefixIcon: SvgPicture.asset('assets/imgs/lock.svg',fit: BoxFit.none,),
                              hintText: 'Password',
                              border: const OutlineInputBorder(),

                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 32,),

                    validat(),

                    // SizedBox(height: 250.h),
                  ],
                ),),



            ],
          ),
        ),
        bottomNavigationBar: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                    height: 2.h,
                    width: 185.w,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE9EAF0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text('OR',style: GoogleFonts.nunitoSans(fontSize: 12.sp,fontWeight: FontWeight.w600,color: const Color(0xFF939AAD)),),
                  ),
                  Container(
                    height: 2.h,
                    width: 185.w,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE9EAF0),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 32.h,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(color: const Color(0xFFE9EAF0)),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/imgs/google_logo.svg'),
                          SizedBox(width: 12.w,),
                          Text('Sing in with Google',style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp,),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.h,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(color: const Color(0xFFE9EAF0)),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/imgs/facebook_logo.svg'),
                          SizedBox(width: 12.w,),
                          Text('Sing in with Facebook',style: GoogleFonts.nunito(fontWeight: FontWeight.w400,fontSize: 14.sp,),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),


              SizedBox(height: 20.h,),
            ],
          ),
        ),
    );
  }
  Widget validat(){
    return GestureDetector(
      onTap: (){
        bool isEmail = false;
        bool isPassword = false;
        if(formKey.currentState!.validate()){
          for(int i = 0; i < users.length;i++) {
            if(email.text.trim() == users[i].email){
              isEmail = true;
              emailError = null;
              if(password.text.trim() == users[i].password){
                isPassword = true;
                passwordError = null;
              }
              if(isEmail && isPassword){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(fullName: users[i].fullName, email: users[i].email, password: users[i].password)));
              }
            }
          }
        }
        if(isEmail == false){
          emailError = 'email not found';
        }

        if(isPassword ==false){
          passwordError = 'password is not correct';
        }

        setState(() {});
      },
      child: Container(
        height: 48.h,
        decoration: const BoxDecoration(
          color: Color(0xFF0864ED),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SIGN IN',style: GoogleFonts.inter(fontSize: 14.sp,color: Colors.white,fontWeight: FontWeight.w600),),

            SizedBox(width: 12.w,),

            const Icon(CupertinoIcons.arrow_right,color: Colors.white,),
          ],
        ),
      ),
    );

  }
}

