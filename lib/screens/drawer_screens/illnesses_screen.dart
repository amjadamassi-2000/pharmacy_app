import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharm_care/components/constant.dart';
import 'package:pharm_care/items/disease_item.dart';

class IllnessesScreen extends StatefulWidget {
  @override
  _IllnessesScreenState createState() => _IllnessesScreenState();
}

class _IllnessesScreenState extends State<IllnessesScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
      //  backgroundColor: Color(0xffD7E1F2),
        appBar: AppBar(
          backgroundColor: primaryColor,
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "الأمراض الشائعة",
            style: GoogleFonts.cairo(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Padding(
          padding:  EdgeInsets.only(bottom: 10.h),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context , index){
              return DelayedDisplay(
                  delay: Duration(milliseconds: 300),

                  child: DiseaseItem());
            }
          ),
        ),
      ),
    );
  }
}
