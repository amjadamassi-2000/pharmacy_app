import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/constant.dart';
import '../../items/all_brand_item.dart';




class AllBrandsScreen extends StatefulWidget {

  @override
  _AllBrandsScreenState createState() => _AllBrandsScreenState();
}

class _AllBrandsScreenState extends State<AllBrandsScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            centerTitle: true,
            elevation: 0.0,
            title: Text(
              " جميع الماركات",
              style: GoogleFonts.cairo(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),

          body: Padding(
            padding:  EdgeInsets.only(top: 20.h),
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 18)
                  .add(EdgeInsets.only(bottom:20)),

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.2.h,
                // number of items per row
                crossAxisCount: 2,
                // vertical spacing between the items
                mainAxisSpacing: 10.h,
                // horizontal spacing between the items
                crossAxisSpacing:10.w,
              ),
              // number of items in your list
              itemCount: 12,
              itemBuilder: (context, index) => DelayedDisplay(
                  delay: Duration(milliseconds: 700),
                  child: AllBrandItem()),
            ),
          ),
        ));
  }
}
