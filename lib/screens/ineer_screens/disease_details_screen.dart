import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharm_care/components/constant.dart';
import 'package:pharm_care/items/product_item.dart';





class DiseaseDetailsScreen extends StatefulWidget {
  @override
  _DiseaseDetailsScreenState createState() => _DiseaseDetailsScreenState();
}

class _DiseaseDetailsScreenState extends State<DiseaseDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "الرشح",
            style: GoogleFonts.cairo(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 20.h,),

              Text(
                "الرشح : ",
                style: GoogleFonts.cairo(
                  color: Colors.black,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

//============================================================================================================

              Text(
                "مرض معد فيروسي يصيب الجهاز التنفسي العلوى، ويعرف أيضا باسم التهاب البلعوم الأنفي الفيروسي الحاد والزكام الحاد ",
                style: GoogleFonts.cairo(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20.h,),



//============================================================================================================

              Text(
                "الأعراض : ",
                style: GoogleFonts.cairo(
                  color: Colors.black,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

//============================================================================================================

              Text(
              " ألم الحلق، الصُّداع والكحَّة سيلان , الأنف، انسدادُ الأنف والعطاس",
                style: GoogleFonts.cairo(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20.h,),




              //============================================================================================================

              Text(
                "الأدوية الموصى بها : ",
                style: GoogleFonts.cairo(
                  color: Colors.black,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h,),

//============================================================================================================


              Container(
                height: 300.h,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    //  shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:  EdgeInsets.only(left: 8.w  , bottom: 20.h , right: 5.w),
                        child: ProductItem(),
                      );
                    }),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
