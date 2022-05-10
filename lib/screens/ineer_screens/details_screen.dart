import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharm_care/components/global_componnets.dart';

import '../../components/constant.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> with TickerProviderStateMixin {

   AnimationController _controller;
   Animation<double> _animation;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 1000),
        vsync: this,
        value: 0,
        lowerBound: 0,
        upperBound: 1
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.linear);
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();

  }



  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: FadeTransition(
          opacity: _animation,
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.only(bottom: 10.h),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.r),
                        bottomRight: Radius.circular(30.r),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: Offset(0, 10),
                            blurRadius: 5.0,
                            spreadRadius: 0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 20.w,
                            ),

                            InkWell(
                              onTap: () {
                                //ToAndFinish(context,ProductCategoryScreen());
                                Navigator.pop(context);
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                radius: 20,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 9.w),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 80.w,
                            ),
                            Text(
                              " وصف المنتج",
                              textDirection: TextDirection.rtl,
                              style: GoogleFonts.cairo(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),


                        SizedBox(
                          height: 30.h,
                        ),


                        Hero(
                          tag:"image",

                          child: Image.network(
                              "https://cdn.chefaa.com/filters:format(webp)/fit-in/144x156/public/uploads/products/1587911903%D8%BA%D8%B3%D9%88%D9%84-%D9%86%D9%8A%D9%81%D9%8A%D8%A7-%D9%84%D9%84%D9%88%D8%AC%D8%A9-%D8%A7%D9%84%D8%A7%D8%B2%D8%B1%D9%82.png"),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(right:20.w, top: 30.h),
                    child: Text(
                      "نيفيا | غسول للوجة الازرق للبشرة العادية للرجال والنساء.",
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.cairo(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w)
                        .add(EdgeInsets.only(top: 5.h)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "50  مل",
                          textDirection: TextDirection.rtl,
                          style: GoogleFonts.cairo(
                            color: Color(0xff022B6C),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [

                            Text(
                              "السعر : 20.00",
                              maxLines: 1,
                              style: GoogleFonts.cairo(
                                color: Colors.grey.shade700,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Image.asset("assets/images/shekel.png" , width: 17.r,),

                          ],
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 160.w, top: 10.h),
                    child: Text(
                      "تفاصيل عن المنتج : ",
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.cairo(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: SizedBox(
                      width: 360,
                      child: Text(
                        "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                        textDirection: TextDirection.rtl,
                        maxLines: 2,
                        style: GoogleFonts.cairo(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),




                  Padding(
                    padding: EdgeInsets.only(left: 160.w, top: 10.h),
                    child: Text(
                      "طريقة الاستخدام : ",
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.cairo(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: SizedBox(
                      width: 360,
                      child: Text(
                        "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                        textDirection: TextDirection.rtl,
                        maxLines: 2,
                        style: GoogleFonts.cairo(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),





                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w)
                        .add(EdgeInsets.only(top: 30.h)),
                    child: FadeTransition(
                      opacity: _animation,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              height: 50.h,
                              width: MediaQuery.of(context).size.width * 0.55,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_shopping_cart_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "أضف الى العربة",
                                    style: GoogleFonts.cairo(
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              height: 45.h,
                              width: MediaQuery.of(context).size.width * 0.16,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(15.r),
                                //border: Border.all(color: primaryColor),
                              ),
                              child:

                              Image.asset("assets/images/bookmark.png" , width: 30, color: Colors.white,),

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
