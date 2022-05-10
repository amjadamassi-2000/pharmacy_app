import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharm_care/components/global_componnets.dart';
import 'package:pharm_care/screens/auth_screens/verification/verification_screen.dart';
import '../components/constant.dart';
import '../screens/bnb_screens/main_screen.dart';
import '../test_screen.dart';
import 'OTP.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,

      child: Scaffold(
    backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "مرحبا بك في فارما كير ",
                style : GoogleFonts.cairo(
                  fontSize: 28,
                  fontWeight: FontWeight.normal,
                ),textAlign: TextAlign.center,
              ),
              Text(
                "التسجيل من خلال رقم الهاتف",
                style : GoogleFonts.cairo(
                  fontSize: 18,
                  color: Colors.grey,
                ),textAlign: TextAlign.center,
              ),
              SizedBox(height: 80.h),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: TextField(
                  textDirection: TextDirection.ltr,
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  controller: _controller,
                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0) ,),

                    ),

                    labelText: 'رقم الهاتف',
                    labelStyle: TextStyle(
                      fontSize: 16.0,
                    ),
                    prefixIcon: Icon(Icons.phone_android_sharp),
                    suffix: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text('972+'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),


              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: myButton(
                    "تحقق",
                        (){
                      To(context ,VerificationScreen());
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
