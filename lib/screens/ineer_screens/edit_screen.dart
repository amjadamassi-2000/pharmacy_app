import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharm_care/components/constant.dart';

class EditScreen extends StatefulWidget {
  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();

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
              padding: EdgeInsets.only(
                  top: 90.h, right: MediaQuery.of(context).size.width / 4.7),
              child: Text(
                "المعلومات الشخصية  ",
                style: GoogleFonts.cairo(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),



            SingleChildScrollView(
              child: Column(
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextField(
                            controller: name,
                            keyboardType:  TextInputType.name,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade300, width: 0.5)),
                              hintText: 'الإسم',
                              hintStyle: GoogleFonts.cairo(
                                fontSize: 16.0,
                              ),
                              labelText: 'الإسم',
                              labelStyle: GoogleFonts.cairo(
                                fontSize: 16.0,
                              ),
                              prefixIcon: Icon(
                                Icons.person_outline_outlined,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          TextField(
                            controller: email,
                            keyboardType:  TextInputType.emailAddress,

                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade300, width: 0.5)),
                              hintText: 'البريد الإلكتروني',
                              hintStyle: GoogleFonts.cairo(
                                fontSize: 16.0,
                              ),
                              labelText: 'البريد الإلكتروني',
                              labelStyle: GoogleFonts.cairo(
                                fontSize: 16.0,
                              ),
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.grey,
                              ),
                            ),
                          ),


                          SizedBox(height: 10.h,),
                          TextField(
                            controller: mobile,
                            keyboardType:  TextInputType.number,

                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade300, width: 0.5)),
                              hintText: 'رقم الهاتف',
                              hintStyle: GoogleFonts.cairo(
                                fontSize: 16.0,
                              ),
                              labelText: 'رقم الهاتف',
                              labelStyle: GoogleFonts.cairo(
                                fontSize: 16.0,
                              ),
                              prefixIcon: Icon(
                                Icons.phone_android_sharp,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
