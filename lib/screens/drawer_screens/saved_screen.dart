import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/constant.dart';
import '../../items/product_item.dart';



class SavedProductScreen extends StatefulWidget {

  @override
  _SavedProductScreenState createState() => _SavedProductScreenState();
}

class _SavedProductScreenState extends State<SavedProductScreen> {
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
            "المحفوظات",
            style: GoogleFonts.cairo(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),

        ),


        body: Padding(
          padding:  EdgeInsets.only(top: 20.h),
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 18)
                .add(EdgeInsets.only(bottom:20)),

            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.4.h,
              // number of items per row
              crossAxisCount: 2,
              // vertical spacing between the items
              mainAxisSpacing: 13.h,
              // horizontal spacing between the items
              crossAxisSpacing:10.w,
            ),
            // number of items in your list
            itemCount: 3,
            itemBuilder: (context, index) => DelayedDisplay(
                delay: const Duration( milliseconds: 300),
                child: ProductItem()),
          ),
        ),
      ),
    );
  }
}
