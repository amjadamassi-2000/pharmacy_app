import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharm_care/components/global_componnets.dart';

import '../components/constant.dart';




class OrderItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Container(
        color: Colors.white,
        width: double.infinity,
        height: 220.h,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              Row(
                children: [


                Padding(
                  padding:  EdgeInsets.only(top: 10.h),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: Container(
                        width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child:  Image.network(
                           "https://www.nykaa.com/beauty-blog/wp-content/uploads/images/issue322/hydrate02.jpg" , width: 200.r,),
                      ),
                  ),
                ),

                  SizedBox(width: 20.w,),

                  SizedBox(
                    width: 210.w,
                    child: Text(
                 "لاروش بوزاى , مان لوك إكسبرت , إيڤا سكين كير , آكس جولد تيمبتشن ",
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.cairo(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
              ],
              ),
              SizedBox(height: 20.h,),


              OrderRow("عدد المنتجات " , "3 قطع"),

              OrderRow("اجمالي المنتجات" , "200.00"),

              OrderRow("تاريخ الطلب" , " 2022 / 5 / 20"),
            ],
          ),
        ),

    );
  }
}











/*
 Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        alignment: Alignment.center,
        height: 60.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.grey.shade300,
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Container(
              alignment: Alignment.center,
              height: 30.h,
              width: 120.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.grey.shade200,
              ),
              child: Text("بانادول تابليتس",
                style: GoogleFonts.cairo(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                color: Colors.grey.shade200,
              ),
              child: Text("2",
                style: GoogleFonts.cairo(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: primaryColor,
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              height: 30.h,
              width: 80.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.grey.shade200,
              ),
              child: Text("20.00\$",
                style: GoogleFonts.cairo(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: primaryColor,
                ),
              ),
            ),



          ],

        ),
      ),
    );
 */