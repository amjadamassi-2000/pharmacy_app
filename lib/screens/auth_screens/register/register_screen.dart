import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharm_care/components/global_componnets.dart';
import 'package:pharm_care/screens/auth_screens/login/login_screen.dart';
import 'package:pharm_care/screens/auth_screens/verification/verification_screen.dart';





class RegisterScreen extends StatefulWidget {

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();

  bool Visible = true;




  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80.h,),

              DelayedDisplay(
                delay: Duration(milliseconds:300),

                child: Row(
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
              ),

              SizedBox(height: 40.h,),

              DelayedDisplay(
                delay: Duration(milliseconds:300),

                child: Text("welcome" ,
                  style:
                  TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                  ),
                ),
              ),




              DelayedDisplay(
                delay: Duration(milliseconds:300),

                child: Text("Register to continue" ,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.black,
                  ),
                ),
              ),

              SizedBox(height: 20.h,),




              DelayedDisplay(
                delay: Duration(milliseconds:300),

                child: Container(
                  child:
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      children: [
                        defaultTextForm(
                          email,
                          " البريد الإلكتروني",
                          icon:  Icon(Icons.email_outlined , color: Colors.black,),
                          //Image.asset("assets/images/email.png", width: 20,),
                          type: TextInputType.emailAddress,
                        ),
                        defaultTextForm(
                          password,
                          " كلمة السر",
                          icon: Icon(Icons.lock_outline , color: Colors.black),
                          //svgImage("password", size: 21),
                            suffixIcon: IconButton(
                                onPressed: (){
                                  setState(() {
                                    Visible = !Visible;
                                  });

                                },
                                icon: Visible ? Icon(Icons.visibility_off) : Icon(Icons.visibility),

                            ),
                          isPassword:  Visible,




                        ),
                        defaultTextForm(
                          phone,
                          "رقم الهاتف",
                          icon: Icon(Icons.phone_android , color: Colors.black),
                          //svgImage("phone", size: 21),
                        ),

                        SizedBox(height: 100.h,),




                        DelayedDisplay(
                          delay: Duration(milliseconds:300),

                          child: myButton(
                            "حفظ ",

                              (){
                              To(context , VerificationScreen());

                              },

                          ),
                        ),



                        Padding(
                          padding:  EdgeInsets.only(right: 60.w , top: 120.h),
                          child: DelayedDisplay(
                            delay: Duration(milliseconds:300),

                            child: Row(
                              children: [
                                Text("هل لديك حساب؟ " ,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),

                                InkWell(
                                  onTap: (){
                                    ToAndFinish(context , LoginScreen());

                                  },
                                  child: Text("تسجيل الدخول" ,
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
                        ),




                      ],
                    ),
                  ),
                ),
              ),








            ],
          ),
        ),
      ),
    );
  }
}
