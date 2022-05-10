import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../components/global_componnets.dart';
import '../bnb_screens/main_screen.dart';




class SuccessfullyScreen extends StatefulWidget {

  @override
  _SuccessfullyScreenState createState() => _SuccessfullyScreenState();
}

class _SuccessfullyScreenState extends State<SuccessfullyScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset('assets/lf30_editor_irrikgtc.json' , width: 300, repeat: false ),
            SizedBox(height: 20.h,),

            Text(
              "تم الشراء بنجاح",
              style: GoogleFonts.cairo(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "سيتم توصيل طلبك خلال : 30 دقيقة",
              style: GoogleFonts.cairo(
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
              ),
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.w).add(EdgeInsets.only(top: 10.h)),
              child: myButton(
                  "الرجوع إلى الرئيسية",
                      (){
                  ToAndFinish(context, MainScreen());
                  }
              ),
            ),

          ],
        ),

      ),
    );
  }
}
