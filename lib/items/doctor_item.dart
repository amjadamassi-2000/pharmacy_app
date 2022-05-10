import 'dart:io';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharm_care/components/constant.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:url_launcher/url_launcher.dart';



class DoctorItem extends StatelessWidget {

  final _dialog = RatingDialog(
    initialRating: 1.0,
    title:Text(
      'تقييم',
      textAlign: TextAlign.center,
      style:  GoogleFonts.cairo(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),

    // image: const FlutterLogo(size: 100),


    submitButtonText: 'حفظ',
    commentHint: 'اكتب لنا تعليق',
    onCancelled: () => print('cancelled'),
    onSubmitted: (response) {
      print('rating: ${response.rating}, comment: ${response.comment}');

      if (response.rating < 3.0) {

      }
    },
  );





  @override
  Widget build(BuildContext context) {

    return DelayedDisplay(
      delay: Duration(milliseconds:500),

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w).add(EdgeInsets.only(bottom: 10.h)),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(color: Colors.grey.shade300)
              ),
              child: Container(
                height: 100.h,
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(right: 0.w),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: Container(
                          height: 100.h,
                          width: 110.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCUI_tOpuw3T-h4O6OYYBS1G1pKEpuTbBdxw&usqp=CAU",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30.w,),
                    Column(
                      children: [
                        SizedBox(height:10.h,),
                        Text(
                          "د. محمد محمد ",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.cairo(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "صيدلية الحلو فارم",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.cairo(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star , color: primaryColor,size: 25,),
                            Text(
                              "4,5",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.cairo(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),


                          ],
                        )

                      ],
                    )
                  ],
                ),
              ),
            ),

            Positioned(
              left: 1.w,
              child: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: (){
                  showDialog(
                    context: context,
                    barrierDismissible: true, // set to false if you want to force a rating
                    builder: (context) => _dialog,
                  );

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
