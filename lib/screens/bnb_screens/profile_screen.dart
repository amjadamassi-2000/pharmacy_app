import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharm_care/components/constant.dart';
import 'package:pharm_care/components/global_componnets.dart';
import 'package:pharm_care/screens/ineer_screens/edit_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 200.0.h,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 50.0)),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 90.h, right: MediaQuery.of(context).size.width /4.7),

              child:Text(
                "المعلومات الشخصية  ",
                style:  GoogleFonts.cairo(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),


            Column(
              children: [
                SizedBox(
                  height: 220.h,
                ),
//                Padding(
//                  padding: EdgeInsets.only(
//                      right: MediaQuery.of(context).size.width /10, top: 10.h),
//                  child: Container(
//                    width: MediaQuery.of(context).size.width / 2,
//                    height: MediaQuery.of(context).size.width / 2,
//                    padding: const EdgeInsets.all(10.0),
//                    decoration: const BoxDecoration(
//                      shape: BoxShape.circle,
//                      color: Colors.white,
//                    ),
//                    child: CircleAvatar(
//                      radius: MediaQuery.of(context).size.width / 2,
//                      backgroundImage: NetworkImage(
//                          "https://i.dlpng.com/static/png/6334095_preview.png"),
//                      backgroundColor: Colors.transparent,
//                    ),
//                  ),
//                ),
                SizedBox(
                  height: 30.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " ",
                            style:  GoogleFonts.cairo(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),

                          InkWell(
                            onTap: (){
                              To(context, EditScreen());
                            },
                            child: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.grey.shade300,
                              ),
                              child: Icon(Icons.edit , color: Colors.white,),
                            ),
                          ),

                        ],
                      ),
                    ),


                    profileItem("الأسم : " , " امجد العمصي"),

                    profileItem("البريد الإلكتروني : " , "user***@gmail.com "),

                    profileItem("رقم الهاتف : " , "00970597667284"),


                  ],

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
