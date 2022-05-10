import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/constant.dart';
import 'order_item.dart';




class OrdersItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w),
          child: Container(
            width: double.infinity,
            height: 260.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(color: primaryColor),


              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    offset:  Offset(0, 10),
                    blurRadius: 5.0,
                    spreadRadius: 0),
              ],

            ),
            child: Padding(
              padding:  EdgeInsets.only(bottom: 10.h , top: 40.h),
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context , index){
                    return Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: OrderItem(),
                    );
                  }
              ),
            ),
          ),
        ),

        Padding(
          padding:  EdgeInsets.symmetric(horizontal:10.w),
          child: Container(
            width: double.infinity,
            height: 40.h,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("الإجمالي:",
                  style: GoogleFonts.cairo(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),

                Text("200.222\$",
                  style: GoogleFonts.cairo(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),

                VerticalDivider(
                  color: Colors.white,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,

                ),

                Text("تاريخ الطلب:",
                  style: GoogleFonts.cairo(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),

                Text("20/10/22",
                  style: GoogleFonts.cairo(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),


              ],
            ),

          ),
        ),

      ],
    );
  }
}
