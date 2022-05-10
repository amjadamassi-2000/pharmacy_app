import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:pharm_care/components/global_componnets.dart';
import 'package:pharm_care/screens/auth_screens/login/login_screen.dart';


class ForgetPasswordScreen extends StatefulWidget {

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {


  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Color(0xff013093),
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios , color: Colors.white,),
            onPressed: (){
              ToAndFinish(context, LoginScreen());
            },
          ),
          title: Text("انشاء كلمة مرور",
            style: TextStyle(
              fontSize: 20.sp,
              color: Colors.white,
            ),
          ),
        ),

        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: 40.h,
              ),

              DelayedDisplay(
                delay: Duration(milliseconds: 300),

                child: Text(
                  " ادخل بريدك الإلكتروني ",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.black,
                  ),
                ),
              ),

              DelayedDisplay(
                delay: Duration(milliseconds: 300),

                child: Text(
                  "سيتم ارسال رسالة تغيير كلمة المرور الى بريدك الإلكتروني",
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.grey,
                  ),
                ),
              ),



              SizedBox(
                height: 40.h,
              ),


              DelayedDisplay(
                delay: Duration(milliseconds: 300),

                child: defaultTextForm(
                  email,
                  " البريد الإلكتروني",
                  icon:  Icon(Icons.email_outlined , color: Colors.black,),
                  type: TextInputType.emailAddress,
                ),
              ),



              SizedBox(
                height: 30.h,
              ),

              DelayedDisplay(
                delay: Duration(milliseconds: 300),


                child: myButton("ارسال",
                        (){
                    }

                ),
              ),

            ],
          ),
        ),


      ),
    );
  }
}
