import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharm_care/components/global_componnets.dart';
import 'package:pharm_care/screens/auth_screens/forget_password/forget_password_screen.dart';
import 'package:pharm_care/screens/auth_screens/register/register_screen.dart';
import 'package:pharm_care/screens/bnb_screens/main_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool Visible = true;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
            child: DelayedDisplay(
              delay: Duration(milliseconds: 300),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Care ',
                      style: GoogleFonts.aBeeZee(
                        //textStyle: Theme.of(context).textTheme.headline4,
                        color: Color(0xff013093),
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      'Pharmacy',
                      style: GoogleFonts.aBeeZee(
                        //textStyle: Theme.of(context).textTheme.headline4,
                        color: Color(0xff009900),
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "!welcome Back",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Login to continue",
                  textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.black,
                    ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      children: [
                        defaultTextForm(
                          email,
                          " البريد الإلكتروني",
                          icon: Icon(
                            Icons.email_outlined,
                            color: Colors.black,
                          ),
                          //Image.asset("assets/images/email.png", width: 20,),
                          type: TextInputType.emailAddress,
                        ),
                        defaultTextForm(
                          password,
                          " كلمة السر",
                          icon: Icon(Icons.lock_outline, color: Colors.black),
                          //svgImage("password", size: 21),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                Visible = !Visible;
                              });
                            },
                            icon: Visible
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                          ),
                          isPassword: Visible,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 200.w , bottom: 10.h),
                          child: InkWell(
                            onTap: () {
                              To(context, ForgetPasswordScreen());
                            },
                            child: Text(
                              " هل نسيت كلمة السر؟",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                        myButton(
                          "تسجيل الدخول ",
                          () {
                            To(context,MainScreen());

                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 80.w,
                            bottom: 20.h,
                            top: 20.h,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "هل لديك حساب؟ ",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),

                              InkWell(
                                onTap: () {
                                  ToAndFinish(context, RegisterScreen());
                                },
                                child: Text(
                                  "تسجيل حساب",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff013093),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "أو",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),


                        SizedBox(height: 30.h,),


                        InkWell(
                          onTap: (){},
                          child: Container(
                            height: 45.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              border: Border.all(
                                width: 1.5,
                                color: Colors.grey,
                              ),
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(right: 70.w),
                              child: Row(
                                children: [
                                  Text(
                                    "Continue With Google",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  SizedBox(width: 10.w,),
                                  svgImage("google", size: 25),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h,),

                        InkWell(
                          onTap: (){},
                          child: Container(
                            height: 45.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              border: Border.all(
                                width: 1.5,
                                color: Colors.grey,
                              ),
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(right: 70.w),
                              child: Row(
                                children: [
                                  Text(
                                    "Continue With Apple",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  SizedBox(width: 17.w,),
                                  svgImage("apple_icon", size: 25),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
