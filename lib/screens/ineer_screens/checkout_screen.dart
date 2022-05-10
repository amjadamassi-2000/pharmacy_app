import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:pharm_care/screens/ineer_screens/successfilly_screen.dart';

import '../../components/constant.dart';
import '../../components/global_componnets.dart';


class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {


  TextEditingController mobile = TextEditingController();
  TextEditingController deliveryTime = TextEditingController();
  TextEditingController deliveryAddress = TextEditingController();






  @override
  Widget build(BuildContext context) {


    DateTime now = DateTime.now();

    String formattedDate = DateFormat('hh:mm:ss - EEE d MMM').format(DateTime.now());


    return Scaffold(
      appBar: AppBar(
        title: Text(
          "إتمام الشراء",
          style: GoogleFonts.cairo(
            fontSize: 14.sp,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w)
            .add(EdgeInsets.only(top: 20.h)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                //controller: mobile,
                initialValue: "0597667284",
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "رقم الهاتف",
                  hintStyle: defaultTextStyleHint(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryColor),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormField(
                //controller: deliveryTime,
                initialValue: formattedDate.toString(),
                decoration: InputDecoration(
                  hintText: "وقت الطلب",
                  hintStyle: defaultTextStyleHint(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryColor),
                  ),

                  // border: InputBorder.none,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormField(
                controller: deliveryAddress,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryColor),
                  ),
                  hintText: "عنوان الطلب",
                  hintStyle: defaultTextStyleHint(),
                ),
              ),

              SizedBox(height: 220.h,),



              Container(
                height: 190.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),

                child: Column(
                  children: [
                    CartRow("اجمالي المنتجات", "\$9.3000000" ),
                    CartRow(   "سعر التوصيل","\$9.3000"),
                    CartRow( "الاجمالي","\$9.3000"),
                    Text(
                      "الدفع عند الاستلام",
                      style: GoogleFonts.cairo(
                        fontSize: 14.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10.w).add(EdgeInsets.only(top: 10.h)),
                        child: myButton(
                            "إتمام الطلب",
                                (){
                                  ToAndFinish(context , SuccessfullyScreen());

                            }
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
