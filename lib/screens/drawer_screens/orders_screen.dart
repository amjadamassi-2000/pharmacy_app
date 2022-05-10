import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharm_care/items/order_item.dart';

import '../../components/constant.dart';
import '../../items/orders_item.dart';



class OrdersScreen extends StatefulWidget {

  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: primaryColor,
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            " طلباتك",
            style: GoogleFonts.cairo(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),

        ),
        body:Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context , index){
                return Padding(
                  padding:  EdgeInsets.only(top: 10.h , ),
                  child: DelayedDisplay(
                      delay: Duration(milliseconds: 400),
                      child: OrderItem()),
                );
              }
          ),
        ),
      ),
    );
  }
}
