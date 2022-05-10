import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharm_care/components/global_componnets.dart';
import 'package:pharm_care/screens/ineer_screens/disease_details_screen.dart';



class DiseaseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        To(context , DiseaseDetailsScreen());
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w).add(EdgeInsets.only(top: 25.h)),
        child: Container(
          width: double.infinity,
          height: 250.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.grey.shade200,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400,
                  offset: Offset(0, 10),
                  blurRadius: 5.0,
                  spreadRadius: 0),
            ],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r),
                  ),
                  child: Image.asset("assets/images/cold.jpg",)),

              Padding(
                padding:  EdgeInsets.only(right: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      "الرشح : ",
                      style: GoogleFonts.cairo(
                        color: Colors.black,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "مرض معد فيروسي يصيب الجهاز التنفسي العلوى",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.cairo(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
