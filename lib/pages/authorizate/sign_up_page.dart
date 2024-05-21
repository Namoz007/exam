import 'package:exam/pages/authorizate/login_page.dart';
import 'package:exam/pages/users/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController passwordFirst = TextEditingController();
  TextEditingController passwordSecond = TextEditingController();
  String? emailError;
  String? passwordFirstError;
  String? passwordSecondError;

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
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            child: Text('Log in',style: GoogleFonts.nunito(fontSize: 16,fontWeight: FontWeight.w600),),
          ),
          SizedBox(width: 20.w,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
        
            const Divider(),
        
            SizedBox(height: 40.h,),
        
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('HELLO!',style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w600,fontSize: 12.sp,color: const Color(0xFF767E94)),),
        
                  SizedBox(height: 8.h,),
        
                  Text('Create account',style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w600,fontSize: 32.sp),),
        
                  SizedBox(height: 32.h),
        
                  Text('Name',style: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 14.sp,color: const Color(0xFF191F33)),),
        
                  SizedBox(height: 8.h,),
        
                  Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: name,
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return 'Please return Full name';
                            }
        
                            return null;
                          },
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)
                            ),
                            hintText: 'Full name',
                            prefixIcon: SvgPicture.asset('assets/imgs/person_icon.svg',fit: BoxFit.none,),
                            border: const OutlineInputBorder(),
                          ),
                        ),
        
                        SizedBox(height: 18.h,),
                        Text('Email',style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400,color: const Color(0xFF191F33)),),
        
                        SizedBox(height: 8.h,),
        
                        TextFormField(
                          controller: email,
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return 'Please return email addres';
                            }
                            if(value.contains('@')){
                              int count = 0;
                              for(int i = 0; i < value.length;i++){
                                if(value[i] == '@')
                                  count++;
                              }
                              if(count > 1)
                                return 'This email not correct';
                              else{
                                return null;
                              }
                            }else{
                              return '@ not found from email';
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
        
                        Text('Password',style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400,color: const Color(0xFF191F33)),),
        
                        SizedBox(height: 8.h,),
        
                        TextFormField(
                          controller: passwordFirst,
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
                            errorText: passwordFirstError,
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)
                            ),
                            hintText: 'Create password',
                            prefixIcon: SvgPicture.asset('assets/imgs/lock.svg',fit: BoxFit.none,),
                            border: const OutlineInputBorder(),
        
                          ),
                        ),
        
                        SizedBox(height: 18.h,),
        
                        Text('Confirm password',style: GoogleFonts.nunito(fontSize: 14.sp,fontWeight: FontWeight.w400,color: const Color(0xFF191F33)),),
        
                        SizedBox(height: 8.h,),
        
                        TextFormField(
                          controller: passwordSecond,
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return 'Please return confirm password';
                            }
                            if(value.length < 8){
                              return 'The password must contain at least 8 elements';
                            }
        
                            return null;
                          },
                          decoration: InputDecoration(
                            errorText: passwordSecondError,
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)
                            ),
                            hintText: 'Confirm password',
                            prefixIcon: SvgPicture.asset('assets/imgs/lock.svg',fit: BoxFit.none,),
                            border: const OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
        
                  const SizedBox(height: 30,),
        
                  validat(),
        
                  // SizedBox(height: 250.h),
                ],
              ),),

            SizedBox(height: 86.h,),


            Container(
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

                  SizedBox(height: 12.h,),

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
                ],
              ),
            ),
            
        
        
        
          ],
        ),
      ),
    );
  }
  Widget validat(){
    return GestureDetector(
      onTap: (){
        bool isTrue = false;
        bool isEmail = false;
        bool isPassword = false;
        if(formKey.currentState!.validate()){
          for(int i = 0; i < users.length;i++)
            if(email.text.trim() == users[i].email){
              isEmail = true;
            }
        }
        if(isEmail){
          emailError = 'Email is aviable';
        }else{
          emailError = null;
          isEmail = false;
        }

        if(passwordFirst.text.trim() != passwordSecond.text.trim()){
          isPassword = true;
        }

        if(isPassword){
          passwordFirstError = 'Password is not the same';
          passwordSecondError = 'Password is not the same';
        }else{
          passwordFirstError = null;
          passwordSecondError = null;
          isPassword = false;
        }
        
        if(!isPassword && !isEmail && email.text.length != 0 && passwordFirst.text.length != 0){
          User user = User(fullName: name.text.trim(), email: email.text.trim(), password: passwordFirst.text.trim());
          users.add(user);

          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                  content: Container(
                    height: 270.h,
                    // width: double.maxFinite,
                    width: 300,
                    child: Column(
                      children: [
                        Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.check,color: Colors.blueAccent.shade700,size: 50,),
                        ),

                        const SizedBox(height: 20,),

                        const Text('Your account is created',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),

                        const SizedBox(height: 20,),


                        const SizedBox(height: 30,),

                        IconButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));
                          },
                          icon: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blueAccent.shade700
                            ),
                            child: const Center(child: Text('LOG IN',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),),
                          ),
                        )
                      ],
                    ),
                  ),
              ),
          );
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
            Text('CREATE ACCOUNT',style: GoogleFonts.inter(fontSize: 14.sp,color: Colors.white,fontWeight: FontWeight.w600),),

            SizedBox(width: 12.w,),

            const Icon(CupertinoIcons.arrow_right,color: Colors.white,),
          ],
        ),
      ),
    );

  }

}
