import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/constant.dart';



class NearestPharmScreen extends StatefulWidget {

  @override
  _NearestPharmScreenState createState() => _NearestPharmScreenState();
}

class _NearestPharmScreenState extends State<NearestPharmScreen> {
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
            "أقرب صيدلية",
            style: GoogleFonts.cairo(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),

        ),
      ),
    );
  }
}
