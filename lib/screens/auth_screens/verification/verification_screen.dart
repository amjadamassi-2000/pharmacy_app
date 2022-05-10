import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:pharm_care/components/constant.dart';
import 'package:pharm_care/components/global_componnets.dart';
import 'package:pharm_care/screens/bnb_screens/main_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:delayed_display/delayed_display.dart';

class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: primaryColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "التحقق",
            style: TextStyle(
              fontSize: 25.sp,
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40.h,
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 300),
                child: Text(
                  "تحقق من رقم الهاتف ",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 300),
                child: Text(
                  "أدخل الرقم المكون من 4 أرقام المرسل إليك على",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.grey,
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 300),
                child: Text(
                  " +0103227812",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 300),
                child: PinCodeTextField(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  length: 4,
                  animationType: AnimationType.fade,
                  showCursor: true,
                  pinTheme: PinTheme(
                    disabledColor: Colors.grey,
                    selectedColor: Colors.grey,
                    activeColor: Colors.grey,
                    activeFillColor: Colors.grey,
                    inactiveFillColor: Colors.grey,
                    shape: PinCodeFieldShape.box,
                    borderWidth: 0.0,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 35.h,
                    fieldWidth: 40.w,
                    inactiveColor: Colors.grey,
                  ),
                  textStyle:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: false,
                  appContext: context,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 300),
                child: myButton("تحقق", () {
                  ToAndFinish(context, MainScreen());
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
