import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../items/product_item.dart';


class OfferScreen extends StatefulWidget {
  @override
  _OfferScreenState createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        // appBar: AppBar(
        //   elevation: 0.0,
        //   backgroundColor: Colors.white,
        //   title: Text(
        //   "أحدث العروض",
        //   style: GoogleFonts.cairo(
        //     color: Colors.black,
        //     fontSize: 16.sp,
        //     fontWeight: FontWeight.w600,
        //   ),
        // ),
        // ),
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              elevation: 0.0,
              // title: Text(
              //   "أحدث العروض",
              //   //textAlign: TextAlign.center,
              //   style: GoogleFonts.cairo(
              //     color: Colors.black,
              //     fontSize: 16.sp,
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),
              centerTitle: true,
              backgroundColor: Colors.white,
              expandedHeight: 350.0.h,
              flexibleSpace: FlexibleSpaceBar(

                background: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/offer_1.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),

                    //SizedBox(height: 50.h,),

                    Padding(
                      padding: EdgeInsets.only(left: 200.w, top: 10.h),
                      child: Text(
                        "أحدث العروض",
                        //textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        left: 230.w,
                      ),
                      child: Text(
                        "خصم  25 % ",
                        //textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 18.w,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.delivery_dining_outlined,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "التوصيل مجانا",
                            style: GoogleFonts.cairo(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      endIndent: 20.w,
                      indent: 20.w,
                      thickness: 1.5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 18.w,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "ينتهي العرض خلال 48 ساعة",
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
              floating: true,
              snap: false,
              pinned: true,
            ),


            SliverPadding(
              padding:  EdgeInsets.symmetric(horizontal: 10.w),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.41.h,
                  crossAxisSpacing: 5.h,
                  mainAxisSpacing: 5.w,
                ),
                delegate: SliverChildBuilderDelegate(

                  (BuildContext context, int index) {
                    return ProductItem();
                  },
                  childCount: 6,
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
